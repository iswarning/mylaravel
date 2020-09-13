<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\TypeProduct;
use App\Comment;
use Carbon\Carbon;
use App\Slide;
use App\User;
use Pusher\Pusher;
use App\Notifications\TestNotification;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use App\Spec;
use App\Introduction;
class HomeController extends Controller
{
	public function Home()
	{
        $topdeal = Product::all()->take(4);
        $pkgiare = Product::where('MaLoai',2)->orderBy('Gia','desc')->take(4)->get();
        $tablet = Product::where('MaLoai',3)->take(4)->get();
        $laptop = Product::where('MaLoai',4)->take(4)->get();

        return view('layout.default',compact('topdeal','pkgiare','tablet','laptop'));
	}

    public function search(Request $request)
    {
        $search = Product::where('TenSanPham','LIKE','%'.$request->textsearch.'%')->get();
        return view('product.search',compact('search'));
	}



	public function detail($id, Request $request)
	{
        $detail = Product::find($id);
        $comment = Comment::where('id_product',$id)->orderBy('created_at','DESC')->paginate(5);

        $spec = Spec::where('product_id',$id)->first();
        if(!$spec){
            $spec = Spec::where('product_id',1)->first();
        }
        $slided = Slide::where('name','Slide Detail')->where('product_id',$id)->get();
        $introduction = Introduction::where('product_id',$id)->get();

        return view('product.detail',compact('detail','comment','slided','spec','introduction'));
	}

	public function comment(Request $request, $id)
	{
        if($request->ajax()){
            $newComment = new Comment();
            $newComment->content = $request->content;
            $newComment->id_product = $request->id;
            $newComment->email_user = $request->email;
            $newComment->save();

            $last_id = Comment::find($newComment['id']);

            if($newComment){
                /* Thông báo có comment mới */
                app('App\Http\Controllers\Backend\Notification\SendNotification')->store('New Comments',$last_id->content);
            }

            return view('show',['comment' => $newComment]);
        }
    }


    /* autocomplete search use ajax */
    public function liveSearch(Request $request, $key){
        if($request->ajax()){
            $data = Product::where('TenSanPham','LIKE','%'.$key.'%')->take(5)->get();
            $search = "";
            foreach($data as $row)
            {
                $search .= "
                <a class='rowsearch' href='".url('product/detail/'.$row->id)."'>
                    <div class='all'>
                        <div class='left'><img id='img' src='".asset($row->HinhAnh)."' /></div>
                        <div class='right'>
                            <div class='top'><p>".$row->TenSanPham."</p></div>
                            <div class='bottom'><p>".number_format($row->Gia)."</p></div>
                        </div>
                    </div>

                </a><hr/>";
            }
            return $search;
        }
    }
}
