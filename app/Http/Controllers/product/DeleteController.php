<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Product;
class DeleteController extends Controller
{
    public function delete(Request $request){
    	$data = Product::find($request->id);
    	$data->delete();
    	return back();
    }
}
