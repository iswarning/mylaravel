<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Redirect;
use App\TypeProduct;
use Str;
class AddController extends Controller
{
    public function add()
    {
    	$cate = TypeProduct::all();
    	return view('admin.product.add',compact('cate'));
    }



    public function postAdd(Request $request)
    {
    	$validatedData = $request->validate([
	        'name' => 'required',
	        'price' => 'required|numeric',
	        'img' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
	    ],[
	    	'name.required' => 'Name not empty',
	    	'price.required' => 'Price not empty',
	    	'price.numeric' => 'Price only number',
	    	'img.required' => 'Do not empty',
	    	'img.image' => 'Please choose picture',
	    	'img.mimes' => 'File invalid',
	    	'img.max' => 'File exceed 2048 character' 
	    ]);

    	if($request->hasFile('img'))
    	{
    		$image = $request->file('img');
    		$name = time().'.'.$image->getClientOriginalExtension();
    		$name = Str::random(10);
    		$destination = public_path('/image');
    		$image->move($destination,$name);
    		$img = "image/".$name;
    	}

	    $add = DB::table('SANPHAM')->insert([
	    	'MaLoai' => $request->optradio,
	    	'TenSanPham' => $request->name,
	    	'MoTa' => $request->mota,
	    	'Gia' => $request->price,
	    	'HinhAnh' => $img,
	    	'HangSanXuat' => $request->pa
	    ]);

	    if(!$add){
	    	return  Redirect::back()->withErrors($validatedData);
	    }
	    else{
	    	return  Redirect::back()->withErrors('Add Success');
	    }

    }
}
