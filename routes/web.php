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
Route::get('/',function(){
    return view('welcome');
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
	Route::get('dashboard','Backend\Product\ProductController@index');
	Route::group(['prefix'=>'product'],function(){
		Route::get('/list','Backend\Product\ProductController@index');
		Route::get('/edit/{id}','Backend\Product\ProductController@show');
		Route::post('/edit/{id}','Backend\Product\ProductController@update');
		Route::get('/add','Backend\Product\ProductController@viewStore');
		Route::post('/add','Backend\Product\ProductController@store')->name('addProduct');
		Route::get('/delete/{id}','Backend\Product\ProductController@destroy');
	});
	Route::group(['prefix'=>'user'],function(){
		Route::get('/','Backend\User\UserController@index');
		Route::get('/edit/{id}','Backend\User\UserController@show');
		Route::post('/edit/{id}','Backend\User\UserController@update');
		Route::get('/add','Backend\User\UserController@viewStore');
		Route::post('/add','Backend\User\UserController@store');
		Route::get('/delete/{id}','Backend\User\UserController@destroy');
	});
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
