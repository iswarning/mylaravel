<?php

namespace App\Http\Controllers\product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class DeleteController extends Controller
{
    public function delete(Request $request){
    	$data = DB::table('SANPHAM')->where('MaSanPham',$request->id);
    	$data->delete();
    	return back();
    }
}
