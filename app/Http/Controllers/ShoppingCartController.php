<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\OrderProduct;
use App\Order;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
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

    public function show()
    {
        $id = Auth::id();
        $order = Order::where('user_id',$id)->get();

        $data = [];
        foreach($order as $row)
        {
            $data[] = OrderProduct::where('order_id',$row->id)->get();
        }

        //dd($data);
        return view('shoppingcart.history',compact('data'));
    }

    /* Thêm sản phẩm vào giỏ hàng */
	public function store($id)
    {
    	$data = Product::find($id);
    	if($data->Instock < 1){
    		return redirect('shoppingcart/list')->withErrors("San Pham Het Hang");
    	}
    	$cart = Cart::add([
    		'id' => $id,
    		'name' => $data->TenSanPham,
    		'qty' => 1,
    		'price' => $data->Gia,
    		'weight' => 550,
    		'options' => ['img' => $data->HinhAnh]
    	]);
    	return redirect('shoppingcart/list');
    }
}
