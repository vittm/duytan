<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    public function welcome(){
        $slide = DB::table('slides')->get();
        $service = DB::table('menues')->where('sub_menu','dich-vu')->get();
        $project = DB::table('menues')->where('sub_menu','du-an')->get();
        $business = DB::table('menues')->where('sub_menu','kinh-doanh')->get();
        $news = DB::table('products')->where('catelogy','tin-tuc')->orderBy('id', 'desc')->limit(1)->get();
        $skip = 1;
        $news2 = DB::table('products')->where('catelogy','tin-tuc')->orderBy('id', 'desc')->offset($skip)->limit(3)->get();
        $partner = DB::table('menues')->where('sub_menu','doi-tac')->get();
        return view('index',['slides'=> $slide,'service'=> $service,'business'=>$business,'project'=>$project,'news'=>$news,'news2'=>$news2,'partner'=>$partner]);
    }
}
