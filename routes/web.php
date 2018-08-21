<?php

// Asset
Route::prefix('asset')->group(function() {
    Route::get('/',             'AssetController@index');
    Route::get('new',           'AssetController@new');
    Route::post('new',          'AssetController@store');
    Route::post('delete',       'AssetController@del');
    Route::post('edit',         'AssetController@edit');
    Route::post('commit_edit',  'AssetController@update');

    // Type
    Route::prefix('type')->group(function() {
        Route::get('/',          'AssetTypeController@index');
        Route::get('new',        'AssetTypeController@new');
        Route::post('store',     'AssetTypeController@store');
        Route::post('delete',    'AssetTypeController@del');
        Route::post('edit',      'AssetTypeController@details');
        Route::post('update',    'AssetTypeController@update');
    });
    
    Route::get('{id}',           'AssetController@view');
    Route::get('{id}/details',   'AssetController@details');
});

Route::get('/', function () {
    return view('index');
});

/* AUTH */
/*
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
*/