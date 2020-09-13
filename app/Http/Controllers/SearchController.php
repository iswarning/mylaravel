<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Spec;
class SearchController extends Controller
{
    public function index(){
        $data = Product::all();
        return view('check',compact('data'));
    }
    public function checkSearch(Request $request)
    {
        if($request->ajax())
        {
            $cate = $request->cateA;
            $price = explode("-", $request->priceA );
            $sort = $request->sortA;
            $start = $price[0];
            $end = $price[1];
            $data = [];

            if(empty($end))
            {
                $end = Product::max('Gia');
            }

            if($cate != '0' && $price != 0 && $sort != '0')
            {
                $data = Product::where('HangSanXuat',$cate)
                                ->where('Gia','>=',$start.'000000')
                                ->where('Gia','<=',$end.'000000')
                                ->orderBy('Gia',$sort)
                                ->get();

            }
            else
            {
                dd("Choose 3");
            }

            if($data){
                return view('show',['data' => $data]);
            }else{
                dd("Product not exist");
            }
        }

    }
}
