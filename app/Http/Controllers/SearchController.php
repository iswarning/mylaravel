<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Spec;
use App\TypeProduct;
use Illuminate\Support\Facades\DB;
class SearchController extends Controller
{


    public function index(){
        $data = Product::all();
        $cate = TypeProduct::where('parent',1)->get();
        return view('check',compact('cate'));
    }
    public function checkSearch(Request $request)
    {


        $data = DB::table('SANPHAM')
                ->where('MaLoai', 1)
                ->orWhere(function($query){

                    $brand = ['Xiaomi','Oppo'];
                    $price = '0-2';
                    $price = explode('-',$price);
                    $start = $price[0] . "000000";
                    $end = $price[1] . "000000";

                    for($i = 0; $i < count($brand); $i++)
                    {
                        $query->where('HangSanXuat',$brand[$i])
                            ->where('Gia','>=',$start)
                            ->where('Gia', '<=' , $end);
                    }


                })->get();

        dd($data);
    }
}
