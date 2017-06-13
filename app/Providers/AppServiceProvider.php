<?php

namespace App\Providers;

use DB;
use Menues;
use View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $menu= DB::table('menues')->get();
        $text= DB::table('texts')->get();
        $logo = DB::table('logos')->where('id','=','1')->get();
        $item = DB::table('items')->get();
        $sub_menu = DB::table('menues')->get();
        View::share(['nav' => $menu, 'text'=>$text,'logo'=>$logo, 'itemhome' => $item,'sub_menu' => $sub_menu]);

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
