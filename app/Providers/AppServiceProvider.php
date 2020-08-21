<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use DB;
use App\TypeProduct;
use App\Product;
use Cart;
use App\Slide;
use App\Notification;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layout.menu',function($view){
            $menu = TypeProduct::all();
            $view->with('menu',$menu);
        });
        view()->composer('layout.menu',function($view){
            $slide = Slide::where('name','=','slide show')->get();
            $view->with('slide',$slide);
        });
        view()->composer('admin.dashboard',function($view){
            $listP = Product::paginate(5);
            $view->with('listP',$listP);
        });
        view()->composer('layout.default',function($view){
            $index = Product::all();
            $view->with('index',$index);
        });
        
    }
}
