<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Redirect;
use App\TypeProduct;
class EditController extends Controller
{
    public function edit(Request $request)
    {
    	$data = DB::table('SANPHAM')->where('MaSanPham',$request->id)->first();
        $cate = TypeProduct::all();
    	return view('admin.product.edit',compact('data','cate'));
    }
    public function postEdit(Request $request)
    {
    	$update = DB::table('SANPHAM')->where('MaSanPham',$request->id)->update([
    		'TenSanPham' => $request->name,
    		'MoTa' => $request->mota,
    		'Gia' => $request->price
    	]);
    	if($update){
    		return Redirect::back()->withErrors(['Update Success !']);
    	}
    	
    }
}
