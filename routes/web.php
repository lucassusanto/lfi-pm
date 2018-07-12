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
    Route::get('/',     'AssetController@index');
    Route::get('new',   'AssetController@new_data');

    Route::post('new',          'AssetController@commit_new_data');
    Route::post('delete',       'AssetController@commit_delete');
    Route::post('edit',         'AssetController@show_edit');
    Route::post('commit_edit',  'AssetController@commit_edit');

    // Comment
    Route::prefix('{id}/comment')->group(function() {
        Route::get('/',            'AssetCommentController@index');
        Route::get('new',          'AssetCommentController@new_data');

        Route::post('new',         'AssetCommentController@commit_new_data');
        Route::post('delete',      'AssetCommentController@commit_delete');
        Route::post('edit',        'AssetCommentController@show_edit');
        Route::post('commit_edit', 'AssetCommentController@commit_edit');
    });

    // Asset Contract
    Route::prefix('{id}/contract')->group(function() {
        Route::get('/',            'AssetContractController@index');
        Route::get('new',          'AssetContractController@new_data');

        Route::post('new',         'AssetContractController@commit_new_data');
        Route::post('delete',      'AssetContractController@commit_delete');
        Route::post('edit',        'AssetContractController@show_edit');
        Route::post('commit_edit', 'AssetContractController@commit_edit');
    });

    // Asset Contract
    Route::prefix('{id}/contract')->group(function() {
        Route::get('/',            'AssetContractController@index');
        Route::get('new',          'AssetContractController@new_data');

        Route::post('new',         'AssetContractController@commit_new_data');
        Route::post('delete',      'AssetContractController@commit_delete');
        Route::post('edit',        'AssetContractController@show_edit');
        Route::post('commit_edit', 'AssetContractController@commit_edit');
    });

    // Asset Depreciation
    Route::prefix('{id}/depreciation')->group(function() {
        Route::get('/',            'AssetDepreciationController@index');
        Route::get('new',          'AssetDepreciationController@new_data');

        Route::post('new',         'AssetDepreciationController@commit_new_data');
        Route::post('delete',      'AssetDepreciationController@commit_delete');
        Route::post('edit',        'AssetDepreciationController@show_edit');
        Route::post('commit_edit', 'AssetDepreciationController@commit_edit');
    });

    // Asset Part
    Route::prefix('{id}/part')->group(function() {
        Route::get('/',            'AssetPartController@index');
        Route::get('new',          'AssetPartController@new');

        Route::post('new',         'AssetPartController@commit_new');
        Route::post('delete',      'AssetPartController@commit_delete');
        Route::post('edit',        'AssetPartController@show_edit');
        Route::post('commit_edit', 'AssetPartController@commit_edit');
    });

    // Type
    Route::prefix('type')->group(function() {
        Route::get('/',     'AssetTypeController@index');
        Route::get('new',   'AssetTypeController@new_data');

        Route::post('new',          'AssetTypeController@commit_new_data');
        Route::post('delete',       'AssetTypeController@commit_delete');
        Route::post('edit',         'AssetTypeController@show_edit');
        Route::post('commit_edit',  'AssetTypeController@commit_edit');
    });
});

// Asset Downtime
Route::get('/asset/downtime', 'AssetDowntimeController@index');
Route::get('/asset/downtime/new', 'AssetDowntimeController@new');
Route::get('/asset/downtime/edit', 'AssetDowntimeController@edit');
// Asset Meter
Route::get('/asset/meter', 'AssetMeterController@index');
Route::get('/asset/meter/new', 'AssetMeterController@new');
Route::get('/asset/meter/edit', 'AssetMeterController@edit');

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