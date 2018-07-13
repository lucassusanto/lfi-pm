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
     // Asset Downtime
    Route::prefix('{id}/downtime')->group(function() {
        Route::get('/',            'AssetDowntimeController@index');
        Route::get('new',          'AssetDowntimeController@new_data');
        Route::post('new',         'AssetDowntimeController@commit_new_data');
        Route::post('delete',      'AssetDowntimeController@commit_delete');
        Route::post('edit',        'AssetDowntimeController@show_edit');
        Route::post('commit_edit', 'AssetDowntimeController@commit_edit');
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
    Route::get('{id}',         'AssetController@view');
});
// Asset Meter
Route::get('/asset/{id}/meter', 'AssetMeterController@index');
Route::get('/asset/{id}/meter/new', 'AssetMeterController@new');
Route::post('/asset/{id}/meter/delete','AssetMeterController@commit_delete');
Route::post('/asset/{id}/meter/new', 'AssetMeterController@commit_new');
Route::post('/asset/{id}/meter/edit', 'AssetMeterController@show_edit');
Route::post('/asset/{id}/meter/commit_edit', 'AssetMeterController@commit_edit');
// Asset Part
Route::get('/asset/part', 'AssetPartController@index');
Route::get('/asset/part/new', 'AssetPartController@new');
Route::post('/asset/part/new', 'AssetPartController@commit_new');
Route::post('/asset/part/delete','AssetPartController@commit_delete');
Route::post('/asset/part/edit','AssetPartController@show_edit');
Route::post('/asset/part/commit_edit','AssetPartController@commit_edit');
Route::get('/', function () {
    return view('welcome');
});
// Auth
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');