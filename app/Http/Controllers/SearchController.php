<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Product;
use App\Spec;
use App\TypeProduct;
class SearchController extends Controller
{
    public function index(){
        $data = Product::all();
        $cate = TypeProduct::where('parent',1)->get();
        return view('check',compact('cate'));
    }
    public function checkSearch(Request $request)
    {
        
        $array = [];
        $data = $request->data;
        $price = $request->price;

        if(isset($data) && !empty($data))
        {    
            for($i = 0; $i < count($data); $i++)
            {
                
            }
        }
        
        
        return response()->json($array);
        
    }
}
