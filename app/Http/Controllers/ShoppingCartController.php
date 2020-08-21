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

    	$qty = $request->qty;
        $getID = Product::find($request->id);
        if($qty > $getID->Instock){
            return redirect('shoppingcart/list')->withErrors("So Luong Khong Du");
        }
		Cart::update($rowId,$qty);
    	
    	return back();
    }
}
