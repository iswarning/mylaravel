<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use Auth;
use App\OrderProduct;
use App\Order;
use DB;
class OrderController extends Controller
{
	public function index()
	{
		$user = Auth::user();
		$cart = Cart::content();
		return view('order',compact('cart','user'));
	}

    public function newOrder(Request $request)
    {
    	
    	$cart = Cart::content();
    	$total = 0;

    	$a = Cart::priceTotal();
    	$b = str_replace(',','', $a);
    	if(is_numeric($b)){
    		$a = $b;
    	}

    	$new = new Order();
    	$new->user_id = Auth::user()->id;
    	$new->payment = $request->pay;
    	$new->note = $request->note;
    	$new->total_quantity = Cart::count();
    	$new->total_amount = $a;
    	$new->position = $request->position;
    	$new->status = 1;
    	$new->save();

    	$order_id = DB::getPdo()->lastInsertId();

    	foreach($cart as $c)
    	{
    		$price = $c->price;
    		$qty = $c->qty;
    		$orderpro = new OrderProduct();
    		$orderpro->order_id = $order_id;
    		$orderpro->product_id = $c->id;
    		$orderpro->product_name = $c->name;
    		$orderpro->price = $c->price;
    		$orderpro->quantity = $c->qty;
    		$orderpro->save();
    	}

    	Cart::destroy();
    	return redirect('/home');
    }

    public function orderAdmin()
    {
        $order = Order::orderBy('id','DESC')->paginate(5);
        return view('admin.order',compact('order'));
    }

    public function orderdetailAdmin()
    {
        $order = OrderProduct::orderBy('id','DESC')->paginate(5);
        return view('admin.orderdetail',compact('order'));
    }

    public function deleteOrder($id)
    {
        $order = Order::find($id);
        
        $orderdetail = OrderProduct::where('order_id','=',$order->id)->get();
        foreach($orderdetail as $o){           
            $o->delete();
        }

        $order->delete();
        return back();
    }

    public function deleteOrderDetail($id)
    {
        $order = OrderProduct::find($id);
        $order->delete();
        return back();
    }
}
