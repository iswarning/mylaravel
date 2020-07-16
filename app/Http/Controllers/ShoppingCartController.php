<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Product;
use Session;
use Cart;
class ShoppingCartController extends Controller
{
    public function index()
    {
    	$cart = Cart::content();
    	return view('shoppingcart.list',compact('cart'));
    }

    public function delete($rowId)
    {
    	Cart::remove($rowId);
    	return back();
    }

    public function update(Request $request, $rowId)
    {
    	//$data = Product::where('MaSanPham',$request->idpro)->select('Instock');
    	$qty = $request->qty;
		Cart::update($rowId,$qty);
    	/*if($qty <= $data){
    		
    		return back()->with('<script>alert("Updated Success")</script>');
    	}
    	else{
    		return back()->with('<script>alert("Updated Failed")</script>');
    	}*/
    	return back();
    }
}
