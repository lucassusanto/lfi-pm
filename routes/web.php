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

    // Asset Meter
    Route::prefix('{id}/meter')->group(function() {
        Route::get('/', 'AssetMeterController@index');
        Route::get('new', 'AssetMeterController@new');
        Route::post('delete','AssetMeterController@commit_delete');
        Route::post('new', 'AssetMeterController@commit_new');
        Route::post('edit', 'AssetMeterController@show_edit');
        Route::post('commit_edit', 'AssetMeterController@commit_edit');
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
    Route::get('{id}/details',         'AssetController@view_details');
    Route::get('{id}/v2',         'AssetController@view2');
});

// AJAX
Route::prefix('ajax')->group(function() {
    Route::prefix('comment')->group(function() {
        Route::post('load',         'AssetCommentAJAXController@load');
        Route::post('create',       'AssetCommentAJAXController@create');
        Route::post('del',          'AssetCommentAJAXController@del');
        Route::post('show_edit',    'AssetCommentAJAXController@show_edit');
        Route::post('commit_edit',  'AssetCommentAJAXController@commit_edit');
    });

    Route::prefix('contract')->group(function() {
        Route::post('load',         'AssetContractAJAXController@load');
        Route::post('create',       'AssetContractAJAXController@create');
        Route::post('del',          'AssetContractAJAXController@del');
        Route::post('show_edit',    'AssetContractAJAXController@show_edit');
        Route::post('commit_edit',  'AssetContractAJAXController@commit_edit');

        Route::get('getOptions',    'AssetContractAJAXController@getOptions');
    });
});

Route::get('/', function () {
    return view('index');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');