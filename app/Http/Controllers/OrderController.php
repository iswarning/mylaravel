<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\OrderProduct;
use App\Order;
use Illuminate\Support\Facades\DB;
use Cart;
use App\Product;
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
        $new->note = $request->note;
    	$new->status = 1;
    	$new->save();

    	$order_id = DB::getPdo()->lastInsertId();

    	foreach($cart as $c)
    	{
    		$orderpro = new OrderProduct();
    		$orderpro->order_id = $order_id;
    		$orderpro->product_id = $c->id;
    		$orderpro->product_name = $c->name;
    		$orderpro->price = $c->price;
    		$orderpro->quantity = $c->qty;
    		$orderpro->save();
            if($orderpro){
                $getIn = Product::find($c->id);
                $sub = $getIn->Instock - $c->qty;
                $update = Product::find($c->id)->update([
                    'Instock' => $sub
                ]);
            }
    	}

    	Cart::destroy();
    	return redirect('/home');
    }

}
