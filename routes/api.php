<?php

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

Route::prefix('depreciation')->group(function() {
    Route::post('load',         'AssetDepreciationAJAXController@load');
    Route::post('create',       'AssetDepreciationAJAXController@create');
    Route::post('del',          'AssetDepreciationAJAXController@del');
    Route::post('show_edit',    'AssetDepreciationAJAXController@show_edit');
    Route::post('commit_edit',  'AssetDepreciationAJAXController@commit_edit');

    Route::get('getOptions',    'AssetDepreciationAJAXController@getOptions');
});