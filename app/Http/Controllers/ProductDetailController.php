<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
class ProductDetailController extends Controller
{
    public function Detail($id)
    {
    	$data = Product::where('MaSanPham','=',$id)->first();
    	return view('product.detail',['data'=>$data]);
    }
}
