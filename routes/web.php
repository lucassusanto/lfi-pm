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
// Asset
Route::prefix('asset')->group(function() {
    Route::get('/', 'AssetController@index');
    Route::get('new', 'AssetController@new_data');
<<<<<<< HEAD
=======

>>>>>>> 1899e351dfd067f4a55992255961923ffa1a89ad
    Route::post('new', 'AssetController@commit_new_data');
    Route::post('delete', 'AssetController@commit_delete');
Route::post('edit', 'AssetController@show_edit');
Route::post('commit_edit', 'AssetController@commit_edit');
<<<<<<< HEAD
=======

>>>>>>> 1899e351dfd067f4a55992255961923ffa1a89ad
    // Asset Type
    Route::prefix('type')->group(function() {
        Route::get('/',     'AssetTypeController@index');
        Route::get('new',   'AssetTypeController@new_data');
        Route::post('new',          'AssetTypeController@commit_new_data');
        Route::post('delete',       'AssetTypeController@commit_delete');
        Route::post('edit',         'AssetTypeController@show_edit');
        Route::post('commit_edit',  'AssetTypeController@commit_edit');
    });
});
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
Route::get('/asset/part/new', 'AssetPartController@commit_new');

// Asset Service Log
Route::get('/asset/slog', 'AssetServiceLogController@index');
Route::get('/asset/slog/new', 'AssetServiceLogController@new');
Route::get('/asset/slog/edit', 'AssetServiceLogController@edit');
Route::get('/', function () {
    return view('welcome');
});
// Auth
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');