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
use App\User;
use Pusher\Pusher;
use App\Notifications\TestNotification;
use Illuminate\Support\Facades\Route;
use DB;
class HomeController extends Controller
{
	public function Home()
	{
		$menu = TypeProduct::all();
		$topdeal = Product::all()->take(4);
		$pkgiare = Product::where('MaLoai',2)->orderBy('Gia','desc')->take(4)->get();
		$tablet = Product::where('MaLoai',3)->take(4)->get();
		$laptop = Product::where('MaLoai',4)->take(4)->get();
    	return view('layout.default',compact('menu','topdeal','pkgiare','tablet','laptop'));
	}

	public function search(Request $request){
		$search = Product::where('TenSanPham','REGEXP',$request->textsearch)->get();
		return view('product.search',compact('search'));
	}

	public function detail($id, Request $request)
	{
        $detail = Product::find($id);
        if($request->ajax()){
            $comment = Comment::where('id_product',$id)->orderBy('created_at','DESC')->paginate(5)->render();
        }
        $comment = Comment::where('id_product',$id)->orderBy('created_at','DESC')->paginate(5);
		$slided = Slide::where('name','=','Slide Detail')->get();
		return view('product.detail',compact('detail','comment','slided'));
	}

	public function comment(Request $request, $id)
	{

		$email_user = Auth::user()->email;
		$newComment = new Comment();
		$newComment['content'] = $request->content;
		$newComment['id_product'] = $request->id;
		$newComment['email_user'] = $email_user;
		$newComment->save();

        $last_id = Comment::find($newComment['id']);

        if($newComment){
            /* Thông báo có comment mới */
            app('App\Http\Controllers\SendNotification')->store('New Comments',$last_id->content);
        }

		return Redirect::back();

	}


    /* Thêm sản phẩm vào giỏ hàng */
	public function add($id)
    {
    	$data = Product::find($id);
    	if($data->Instock < 1){
    		return redirect('shoppingcart/list')->withErrors("San Pham Het Hang");
    	}
    	$cart=Cart::add([
    		'id' => $id,
    		'name' => $data->TenSanPham,
    		'qty' => 1,
    		'price' => $data->Gia,
    		'weight' => 550,
    		'options' => ['img' => $data->HinhAnh]
    	]);
    	return redirect('shoppingcart/list');
    }

    /*public function liveSearch(Request $request){
        if($request->ajax()){
            $search = '';
            $data = Product::where('TenSanPham','REGEXP',$request->search)->get();
            if($data){
                foreach($data as $pros){
                    $search .= '<tr>
                    <td>' . $pros->id . '</td>
                    <td>' . $pros->TenSanPham . '</td>
                    <td>' . $pros->MoTa . '</td>
                    <td>' . $pros->Gia . '</td>
                    </tr>';
                }
            }
            return Response($search);
        }
    }*/
}
