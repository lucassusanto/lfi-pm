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

// Asset
Route::get('/asset', 'AssetController@index');
Route::get('/asset/new', 'AssetController@new');
Route::get('/asset/edit', 'AssetController@edit');

// Asset Comment
Route::get('/asset/comment', 'AssetCommentController@index');
Route::get('/asset/comment/new', 'AssetCommentController@new');
Route::get('/asset/comment/edit', 'AssetCommentController@edit');

// Asset Contract
Route::get('/asset/contract', 'AssetContractController@index');
Route::get('/asset/contract/new', 'AssetContractController@new');
Route::get('/asset/contract/edit', 'AssetContractController@edit');

// Asset Depreciation
Route::get('/asset/depreciation', 'AssetDepreciationController@index');
Route::get('/asset/depreciation/new', 'AssetDepreciationController@new');
Route::get('/asset/depreciation/edit', 'AssetDepreciationController@edit');

// Asset Downtime
Route::get('/asset/downtime', 'AssetDowntimeController@index');
Route::get('/asset/downtime/new', 'AssetDowntimeController@new');
Route::get('/asset/downtime/edit', 'AssetDowntimeController@edit');

// Asset Meter
Route::get('/asset/meter', 'AssetMeterController@index');
Route::get('/asset/meter/new', 'AssetMeterController@new');
Route::get('/asset/meter/edit', 'AssetMeterController@edit');

// Asset Part
Route::get('/asset/part', 'AssetPartController@index');
Route::get('/asset/part/new', 'AssetPartController@new');
Route::get('/asset/part/edit', 'AssetPartController@edit');

// Asset Service Log
Route::get('/asset/slog', 'AssetServiceLogController@index');
Route::get('/asset/slog/new', 'AssetServiceLogController@new');
Route::get('/asset/slog/edit', 'AssetServiceLogController@edit');

// Asset Type
Route::get('/asset/type', 'AssetTypeController@index');
Route::get('/asset/type/new', 'AssetTypeController@new');
Route::get('/asset/type/edit', 'AssetTypeController@edit');

Route::post('/asset/type/new', 'AssetTypeController@new_data');
Route::post('/asset/type/delete', 'AssetTypeController@delete');

// Auth
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
