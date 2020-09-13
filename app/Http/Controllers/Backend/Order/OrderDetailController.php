<?php

namespace App\Http\Controllers\Backend\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\OrderProduct;
use App\Order;
class OrderDetailController extends Controller
{
    
    /* Display Order Detail */
    public function index()
    {
        $order = OrderProduct::orderBy('id','DESC')->paginate(5);
        return view('admin.orderdetail',compact('order'));
    }

    
    /* Delele Order where id */
    public function destroy($id)
    {
        $order = OrderProduct::find($id);
        $order->delete();
        $id_order = Order::where('id',$order->order_id)->first();
        $checkexist = OrderProduct::where('order_id',$id_order)->get();
        if(empty($checkexist)){
            $id_order->delete();
        }
        return back();
    }
}
