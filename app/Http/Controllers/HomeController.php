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
class HomeController extends Controller
{
	public function Home()
	{
		$index = Product::all();
		$menu = TypeProduct::all();
		$slide = Slide::all();
    	return view('layout.default',compact('index','menu','slide'));
	}

	public function search(Request $request){
		$search = Product::where('TenSanPham','REGEXP',$request->textsearch)->get();
		return view('product.search',compact('search'));
	}

	public function detail($id)
	{
		$detail = Product::where('MaSanPham',$id)->first();
		$comment = Comment::where('id_product',$id)->orderBy('created_at','DESC')->paginate(5);
		return view('product.detail',compact('detail','comment'));
	}

	public function comment(Request $request, $id)
	{

		$email_user = Auth::user()->email;
		$newComment = new Comment();
		$newComment['content'] = $request->content;
		$newComment['id_product'] = $request->id;
		$newComment['email_user'] = $email_user;
		$newComment->save();

		return Redirect::back();

	}

	public function cate($id){
		$cate = Product::where('MaLoai','=',$id)->get();
		return view('product.cate',compact('cate'));
	}

	public function add($id)
    {
    	$data = Product::where('MaSanPham',$id)->first();
    	$cart=Cart::add([
    		'id' => $id,
    		'name' => $data->TenSanPham,
    		'qty' => 1,
    		'price' => $data->Gia,
    		'weight' => 550,
    		'options' => ['img' => $data->HinhAnh]
    	]);
    	return back();
    }

}
