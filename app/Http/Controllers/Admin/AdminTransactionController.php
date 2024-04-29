<?php

namespace App\Http\Controllers\Admin;

use App\Exports\TransactionExport;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Transaction;
use DB;
use Excel;
use Illuminate\Http\Request;

class AdminTransactionController extends Controller
{
    public function index(Request $request)
    {
        $transactions = Transaction::orderBy('id', 'desc')->where('tst_status', '<', '5');
        if ($request->id) $transactions->where('id', $request->id);
        if ($email = $request->email) {
            $transactions->where('tst_email', 'like', '%' . $email . '%');
        }
        if ($type = $request->type) {
            if ($type == 1) {
                $transactions->where('tst_user_id', 1);
            } else {
                $transactions->where('tst_user_id', 0);
            }
        }
        if ($status = $request->status) {
            $transactions->where('tst_status', $status);
        }
        $transactions = $transactions->paginate(10);
        if ($request->export) {
            return Excel::download(new TransactionExport($transactions), date('Y-m-d') . '-don-hang.xlsx');
        }
        $viewData = [
            'transaction' => $transactions,
            'query' => $request->query()
        ];
        return view('admin.transaction.index', $viewData);
    }

    public function getTransactionDetail(Request $request, $id)
    {
        if ($request->ajax()) {
            $order = Order::with('product:id,pro_name,pro_slug,pro_avatar')->where('od_transaction_id', $id)->get();
            $html = view("component.transaction", compact('order'))->render();
            return response([
                'html' => $html
            ]);
        }
    }

    public function guest($id)
    {
        $transactions = Transaction::find($id);
        if ($transactions) {
            $transactions->tst_user_id = !$transactions->tst_user_id;
        }
        $transactions->save();
        return redirect()->back();
    }

    public function deleteOrderItem(Request $request, $id)
    {
        if ($request->ajax()) {
            $order = Order::find($id);
            if ($order) {
                $money = $order->od_qty * $order->od_price;

                DB::table('transactions')
                    ->where('id', $order->od_transaction_id)
                    ->decrement('tst_total_money', $money);
                $order->delete();

            }
            return response(['code' => 299]);
        }

    }

    public function delete($id)
    {
        $transactions = Transaction::find($id);
        if ($transactions) {
            $transactions->delete();
            DB::table('orders')->where('od_transaction_id', $id)->delete();

            return redirect()->back();
        }
    }

    public function getAction($action, $id)
    {
        $transactions = Transaction::find($id);
        if ($transactions) {
            switch ($action) {
                case 'process':
                    $transactions->tst_status = 2;
                    break;
                case 'success':
                    $transactions->tst_status = 3;
                    break;

                case 'cancel':
                    $transactions->tst_status = -1;
                    break;

                case 'confirm':
                    $transactions->tst_status = 4;
                    break;
            }
            $transactions->save();
        }
        return redirect()->back();
    }
}
