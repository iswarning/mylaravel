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
/* Home Page */
Route::get('/home','HomeController@Home')->name('home');
Route::group(['prefix'=>'product'],function(){
	Route::get('/detail/{id}','HomeController@detail');
	Route::post('/detail/{id}','HomeController@comment')->middleware('guest');
	Route::get('/cate/{id}','HomeController@cate');
	Route::post('/search','HomeController@search');
});


/* Login */
Route::get('login','LoginController@Login');
Route::post('login','LoginController@postLogin');
Route::get('logout','LoginController@logout');
Route::get('register','LoginController@register');
Route::post('register','LoginController@postRegister');


/* Admin System */
Route::group(['middleware'=>'admin','prefix'=>'admin'],function(){
	Route::get('dashboard','DashBoardController@index');
	Route::group(['prefix'=>'product'],function(){
		Route::get('/edit/{id}','product\EditController@edit');
		Route::post('/edit/{id}','product\EditController@postEdit');
		Route::get('/add','product\AddController@add');
		Route::post('/add','product\AddController@postAdd');
		Route::get('/delete/{id}','product\DeleteController@delete');
	});
	Route::group(['prefix'=>'user'],function(){
		Route::get('/','UserController@index');
		Route::get('/edit/{id}','user\EditController@edit');
		Route::post('/edit/{id}','user\EditController@postEdit');
		Route::get('/add','user\AddController@add');
		Route::post('/add','user\AddController@postAdd');
		Route::get('/delete/{id}','UserController@delete');
	});
	Route::group(['prefix'=>'comment'],function(){
		Route::get('/','CommentController@index');
		Route::get('/delete/{id}','CommentController@delete');
	});
	Route::group(['prefix'=>'order'],function(){
		Route::get('/','OrderController@orderAdmin');
		Route::get('/delete/{id}','OrderController@deleteOrder');
	});
	Route::group(['prefix'=>'orderdetail'],function(){
		Route::get('/','OrderController@orderdetailAdmin');
		Route::get('/delete/{id}','OrderController@deleteOrderDetail');
	});
});

Route::group(['prefix'=>'shoppingcart','middleware'=>'guest'],function(){
	Route::post('/add/{id}','HomeController@add');
	Route::get('/list','ShoppingCartController@index');
	Route::get('/delete/{rowId}','ShoppingCartController@delete');
	Route::post('/update/{rowId}','ShoppingCartController@update');
});

Route::group(['middleware'=>'guest'],function(){
	Route::get('order','OrderController@index');
	Route::post('order','OrderController@newOrder');
});

Route::view('/api/test','vue');
