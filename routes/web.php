<?php

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
Route::get('/', function () {
    return view('main');
});

// --------------------------- Asset ---------------------------
Route::get('/asset', 'AssetController@index');
Route::get('/asset/new', 'AssetController@new');
Route::get('/asset/edit', 'AssetController@edit');

Route::get('/asset/layout', 'AssetController@layout'); // Debug

// ---------------------------- Auth ----------------------------
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
