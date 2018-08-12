<?php

Route::prefix('comment')->group(function() {
    Route::post('/',       'AssetCommentAJAXController@master');
    Route::post('store',   'AssetCommentAJAXController@store');
    Route::post('del',     'AssetCommentAJAXController@del');
    Route::post('detail',  'AssetCommentAJAXController@detail');
    Route::post('update',  'AssetCommentAJAXController@update');
});

Route::prefix('contract')->group(function() {
    Route::post('/',       'AssetContractAJAXController@master');
    Route::post('store',   'AssetContractAJAXController@store');
    Route::post('del',     'AssetContractAJAXController@del');
    Route::post('detail',  'AssetContractAJAXController@detail');
    Route::post('update',  'AssetContractAJAXController@update');

    Route::get('getOptions',    'AssetContractAJAXController@getOptions');
});

Route::prefix('depreciation')->group(function() {
    Route::post('/',       'AssetDepreciationAJAXController@master');
    Route::post('store',   'AssetDepreciationAJAXController@store');
    Route::post('del',     'AssetDepreciationAJAXController@del');
    Route::post('detail',  'AssetDepreciationAJAXController@detail');
    Route::post('update',  'AssetDepreciationAJAXController@update');
});