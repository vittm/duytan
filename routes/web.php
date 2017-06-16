<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', 'HomeController@welcome');

Route::get('/admin/add-products', 'productsController@products');
Route::get('/admin/edit-products-{id}', 'productsController@edit');
Route::post('/editProducts', 'productsController@editing');
Route::post('/ActionProducts', 'productsController@ActionProducts');
Route::get('/admin/destroy-{id}', 'productsController@destroy');
Route::get('/admin/listings', 'productsController@adminlistings');
Route::get('/chi-tiet-{name}', 'productsController@detail');

Route::get('/admin/menu', 'WidgetController@menu');
Route::get('/admin/add-menu', 'WidgetController@showmenu');
Route::post('/admin/addmenu', 'WidgetController@addmenu');
Route::post('/admin/editingmenu', 'WidgetController@editingmenu');
Route::get('/admin/show-edit-menu-{id}', 'WidgetController@editmenu');
Route::get('/admin/delete-menu-{id}', 'WidgetController@destroymenu');

Route::get('/admin/about', 'WidgetController@admin_about');
Route::get('/gioi-thieu', 'WidgetController@about');
Route::get('/lien-he', function () {
    return View('contact');
});
Auth::routes();
Route::get('/admin/add-about', 'WidgetController@add_about');
Route::post('/admin/adding-about', 'WidgetController@adding_about');
Route::get('/admin/edit-about-{id}', 'WidgetController@edit_about');
Route::post('/admin/editing-about', 'WidgetController@editing_about');
Route::get('/destroy-about-{id}', 'WidgetController@destroy_about');

Route::get('/admin/slide', 'WidgetController@slide');
Route::get('/admin/add-slide', 'WidgetController@add_slide');
Route::post('/admin/adding-slide', 'WidgetController@adding_slide');
Route::get('/admin/edit-slide-{id}', 'WidgetController@edit_slide');
Route::post('/admin/editing-slide', 'WidgetController@editing_slide');
Route::get('/destroy-slide-{id}', 'WidgetController@destroy_slide');

Route::get('/admin/edit-term', 'WidgetController@testimonial');

Route::get('/{name}', 'WidgetController@listingProject');
Route::post('/contact-submit', 'WidgetController@contact');
Route::get('/admin/detail-message-{id}', 'WidgetController@detail_mess');
Route::get('/admin/listings-mess', 'WidgetController@listings_mess');

Route::get('/noti', function () {
    return View('noti');
});




Route::get('/admin/home', 'HomeController@index');

Route::get('/admin/text', function(){
    return view('admin.partial.text');
});
Route::get('/admin/delete-text-{id}', 'WidgetController@delete_text');
Route::post('/admin/update-text', 'WidgetController@update_text');

Route::get('/admin/logo', 'WidgetController@indexlogo');
Route::post('/admin/logoing', 'WidgetController@logo');

Route::get('/admin/item', 'WidgetController@item');
Route::get('/admin/edit-item-{id}', 'WidgetController@editItem');
Route::post('/admin/update-item-{id}', 'WidgetController@updateItem');
