<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\TypeProduct;
use App\Comment;
use View;
use Redirect;
use Auth;
use Str;
use Form;
use Cart;
use Carbon\Carbon;
use App\Slide;
use Illuminate\Support\Facades\Route;
class CategoryController extends Controller
{
    public function cate($id){
		$cate = Product::where('MaLoai','=',$id)->get();
		return view('product.cate',compact('cate'));
	}
}
