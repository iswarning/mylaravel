<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Redirect;
use App\TypeProduct;
use App\Product;
class EditController extends Controller
{
    public function edit(Request $request, $id)
    {
    	$data = Product::find($id);
        $cate = TypeProduct::where('parent',0)->get();
    	return view('admin.product.edit',compact('data','cate'));
    }
    public function postEdit(Request $request, $id)
    {
    	$update = Product::find($id)->update([
    		'TenSanPham' => $request->name,
    		'MoTa' => $request->mota,
    		'Gia' => $request->price
    	]);
    	if($update){
    		return Redirect::back()->withErrors(['Update Success !']);
    	}

    }
}
