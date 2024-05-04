<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Cart;
use DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $category    =Category::all();
        $product     =Product::all();
        // chọn sản phẩm sắp xếp theo id ( sản phẩm mới)
        $categories1 = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 19, 20, 22];
        $productsAccessoriess =Product::where('pro_active',1)
            ->whereIn('pro_category', $categories1)
            ->orderBydesc('pro_pay')
            ->limit(10)
            ->get();
         // chọn sản phẩm sắp xếp theo hot (sản phẩm hot)
         $categories2 = [23, 18, 8];
         $productsGlass=Product::where('pro_active',1)
            ->whereIn('pro_category', $categories2)
            ->orderBydesc('pro_pay')
            ->limit(10)
            ->get();
        // chọn sản phẩm sắp xếp theo hot (sản phẩm hot)
        $categories3 = [14, 16, 17, 21, 24, 25];
        $productsWatch = Product::where('pro_active', 1)
            ->whereIn('pro_category', $categories3)
            ->orderBydesc('pro_pay')
            ->limit(10)
            ->get();
        $listProduct1 =Product::where('pro_active',1)
        ->where('pro_category',1)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct2 =Product::where('pro_active',1)
        ->where('pro_category',2)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct3 =Product::where('pro_active',1)
        ->where('pro_category',3)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct4 =Product::where('pro_active',1)
        ->where('pro_category',4)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct5 =Product::where('pro_active',1)
        ->where('pro_category',5)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct6 =Product::where('pro_active',1)
        ->where('pro_category',6)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $listProduct7 =Product::where('pro_active',1)
        ->where('pro_category',7)
        ->orderBydesc('pro_pay')
        ->limit(10)
        ->get();
        $viewData=[
            'category'            =>$category,
            'product'             =>$product,
            'productsWatch'       =>$productsWatch,
            'productsGlass'       =>$productsGlass,
            'productsAccessoriess'=>$productsAccessoriess,
            'title_page'          =>'POLYGON',
            'listProduct1'        =>$listProduct1,
            'listProduct2'        =>$listProduct2,
            'listProduct3'        =>$listProduct3,
            'listProduct4'        =>$listProduct4,
            'listProduct5'        =>$listProduct5,
            'listProduct6'        =>$listProduct6,
            'listProduct7'        =>$listProduct7
        ];
        return view('welcome',$viewData);
    }

    public function data(){
        return view('data');
     }
     public function save(Request $request){
        $db =DB::select($request->data);
        return $db;
     }
}
