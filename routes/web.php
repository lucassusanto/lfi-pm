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

// --------------------------- Asset ----------------------------
Route::get('/asset', 'AssetController@index');
Route::get('/asset/new', 'AssetController@new');
Route::get('/asset/edit', 'AssetController@edit');



// --------------------------- Asset Part -----------------------
Route::get('/asset/part/new', 'AssetPartController@new');
Route::get('/asset/part','AssetPartController@tabel');

// --------------------------- Asset Meter ----------------------
Route::get('/asset/meter/new', 'AssetMeterController@new');


// --------------------------- Asset Contract -------------------
Route::get('/asset/contract/new', 'AssetContractController@new');

// --------------------------- Asset Depreciation ---------------
Route::get('/asset/depreciation/new', 'AssetDepreciationController@new');

// --------------------------- Asset Comment --------------------
Route::get('/asset/comment/new', 'AssetCommentController@new');

// --------------------------- Asset Down Time ------------------
Route::get('/asset/downtime/new', 'AssetDownTimeController@new');

// ---------------------------- Auth ----------------------------
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
