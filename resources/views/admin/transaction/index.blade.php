@extends('layout.admin')
@section('content')
    <style>li {
            list-style: none
        }</style>
    <title>Quản lý đơn hàng</title>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->

        <section class="content">
            <!-- Default box -->
            <div class="box">
                <div class="box-header with-border">
                    <div class="box-title">
                        <form class="form-inline">
                            <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id"
                                   placeholder="ID">
                            <input type="text" class="form-control" value="{{ Request::get('email') }}" name="email"
                                   placeholder="Email ...">
                            <select name="status" class="form-control">
                                <option value="">Trạng thái</option>
                                <option value="1" {{ Request::get('status') == 1 ? "selected='selected'" : "" }}>Tiếp
                                    nhận
                                </option>
                                <option value="2" {{ Request::get('status') == 2 ? "selected='selected'" : "" }}>Đang
                                    vận chuyển
                                </option>
                                <option value="3" {{ Request::get('status') == 3 ? "selected='selected'" : "" }}>Đã bàn
                                    giao
                                </option>
                                <option value="4" {{ Request::get('status') == 4 ? "selected='selected'" : "" }}>Huỷ
                                    bỏ
                                </option>
                            </select>
                            <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>
                            <button type="submit" name="export" value="true" class="btn btn-info">
                                <i class="fa fa-save"></i> Export
                            </button>
                        </form>
                    </div>
                    <table class="table text-center">
                        <thead>
                        <td>#</td>
                        <td>Khách hàng</td>
                        <td>Số tiền</td>
                        <td>Cổng thanh toán</td>
                        <td>Trạng thái</td>
                        <td>Thời gian</td>
                        <td>Hành động</td>
                        </thead>
                        @if(!count($transaction))
                            <tbody>
                            <tr>
                                <th colspan="8">Không có đơn hàng mới</th>
                            </tr>
                            </tbody>
                        @endif
                        @foreach($transaction as $key =>$list)
                            <tbody>
                            <td>{{ $list->id }}</td>
                            <td>
                                <ul>
                                    <li>Tên :{{ $list->tst_name}}</li>
                                    <li>Email: {{ $list->tst_email }}</li>
                                    <li>Điện thoại :{{ $list->tst_phone}}</li>
                                    <li>Địa chỉ: {{ $list->tst_address }}</li>
                                    <li>Ghi chú: {{ $list->tst_note }}</li>
                                </ul>
                            </td>
                            <td>{{ number_format( $list->tst_total_money , 0, '.', ',') }} đ</td>
                            <td>@if($list->tst_type ==1 )
                                    Trực tiếp
                                @elseif($list->tst_type ==2 )
                                    Paypal
                                @endif
                            </td>
                            <td>
      <span class="{{ $list->getStatus($list->tst_status)['class'] }}">
      {{ $list->getStatus($list->tst_status)['name']}}
      </span></td>
                            <td>{{ $list->created_at}}</td>
                            <td>
                                <a data-id="{{ $key }}" href="javascript:;"
                                   data-href="{{ route('ajax.admin.transaction.detail',$list->id)}}" class="label label-primary js-preview-transaction
      "><i class="fa fa-eye"></i> View</a>

                                <div class="btn-group">
                                    <button class="btn btn-success btn-xs">Action</button>
                                    <button class="btn btn-success  btn-xs dropdown-toggle" data-toggle="dropdown"
                                            aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="{{ route('admin.action.transaction',['process',$list->id])}}"><i
                                                        class="fa fa-ban"></i>Đang bàn giao</a></li>
                                        <li><a href="{{ route('admin.action.transaction',['success',$list->id])}}"><i
                                                        class="fa fa-ban"></i>Đã bàn giao</a></li>
                                        <li><a href="{{ route('admin.action.transaction',['confirm',$list->id])}}"><i
                                                        class="fa fa-ban"></i>Người dùng đã xác nhận</a></li>
                                        <li><a href="{{ route('admin.action.transaction',['cancel',$list->id])}}"><i
                                                        class="fa fa-ban"></i>Hủy</a></li>
                                    </ul>
                                </div>
                            </td>
                            </tbody>

                        @endforeach
                    </table>
        </section>
        <div class="box-footer">
            {!! $transaction->appends($query ?? [])->links() !!}
        </div>
        <!-- /.content -->
    </div>

    <!-- /.content-wrapper -->

    <div class="modal fade fade" id="modal-preview-transaction">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"> Chi tiết đơn hàng <b id="idTransaction">#1</b></h4>
                </div>
                <div class="modal-body">
                    <div class="content">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@stop