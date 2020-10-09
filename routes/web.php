<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/* API */
Route::get('/product',function(){
    return view('welcome');
});
Route::get('/user',function(){
    return view('manageUser');
});

/* Home Page */
Route::get('/home','HomeController@Home')->name('home');
Route::group(['prefix'=>'product'],function(){
	Route::get('/detail/{id}','HomeController@detail');
	Route::post('/detail/{id}','HomeController@comment')->middleware('guest')->name('product.comment');
	//Route::post('/detail/{id}','HomeController@reply')->middleware('guest');
    Route::get('/cate/{id}','CategoryController@cate');
    Route::post('/search','HomeController@search');

});
Route::get('/check','SearchController@index');
Route::post('/check','SearchController@checkSearch')->name('postCheck');

/* Login */
Route::get('login','LoginController@Login');
Route::post('login','LoginController@postLogin');

/* Facebook Login */
Route::get('login/redirect/{provider}','LoginController@redirect');
Route::get('login/callback/{provider}','LoginController@callback');

Route::get('logout','LoginController@logout');
Route::get('register','LoginController@register');
Route::post('register','LoginController@postRegister');


/* Admin System */
Route::group(['middleware'=>'admin','prefix'=>'admin'],function(){

	Route::get('/products',function(){ return view('admin.product.products'); });

	Route::get('/users',function(){ return view('admin.user.users'); });

	Route::get('/posts',function(){ return view('admin.post.posts'); });

	Route::group(['prefix'=>'comment'],function(){
		Route::get('/','Backend\Comment\CommentController@index');
		Route::get('/delete/{id}','Backend\Comment\CommentController@destroy');
	});
	Route::group(['prefix'=>'order'],function(){
		Route::get('/','Backend\Order\OrderController@index');
		Route::get('/delete/{id}','Backend\Order\OrderController@destroy');
	});
	Route::group(['prefix'=>'orderdetail'],function(){
		Route::get('/','Backend\Order\OrderDetailController@index');
		Route::get('/delete/{id}','Backend\Order\OrderDetailController@destroy');
    });
    Route::get('/notification/list','Backend\Notification\SendNotification@index');
});

/* Shopping Cart */
Route::group(['prefix'=>'shoppingcart','middleware'=>'guest'],function(){
	Route::post('/add/{id}','ShoppingCartController@store');
	Route::get('/list','ShoppingCartController@index');
	Route::get('/delete/{rowId}','ShoppingCartController@delete');
	Route::post('/update/{rowId}','ShoppingCartController@update');
	Route::get('/history','ShoppingCartController@show');
});

/* Order Detail */
Route::group(['middleware'=>'guest'],function(){
	Route::get('order','OrderController@index');
	Route::post('order','OrderController@newOrder');
});

Route::get('/liveSearch/{key}','HomeController@liveSearch')->name('liveSearch');

Route::get('chat', 'ChatController@index');
Route::post('chat', 'ChatController@store')->name('postChat');
