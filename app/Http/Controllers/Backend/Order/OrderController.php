<?php

namespace App\Http\Controllers\Backend\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Order;
use App\OrderProduct;
class OrderController extends Controller
{
    
    public function index()
    {
        $order = Order::orderBy('id','DESC')->paginate(5);
        return view('admin.order',compact('order'));
    }

    
    public function destroy($id)
    {
        $order = Order::find($id);

        $orderdetail = OrderProduct::where('order_id','=',$order->id)->get();
        foreach($orderdetail as $o){
            $o->delete();
        }

        $order->delete();
        return back();
    }
}
