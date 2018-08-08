<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Migrations
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
