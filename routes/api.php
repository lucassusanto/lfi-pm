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

    Route::get('options',    'AssetContractAJAXController@options');
});

Route::prefix('depreciation')->group(function() {
    Route::post('/',       'AssetDepreciationAJAXController@master');
    Route::post('store',   'AssetDepreciationAJAXController@store');
    Route::post('del',     'AssetDepreciationAJAXController@del');
    Route::post('detail',  'AssetDepreciationAJAXController@detail');
    Route::post('update',  'AssetDepreciationAJAXController@update');
});

Route::prefix('downtime')->group(function() {
    Route::post('/',       'AssetDowntimeAJAXController@master');
    Route::post('store',   'AssetDowntimeAJAXController@store');
    Route::post('del',     'AssetDowntimeAJAXController@del');
    Route::post('detail',  'AssetDowntimeAJAXController@detail');
    Route::post('update',  'AssetDowntimeAJAXController@update');

    Route::get('options',    'AssetDowntimeAJAXController@options');
});

// DEBUG
Route::prefix('meter')->group(function() {
    Route::post('/',       'AssetMeterAJAXController@master');
    Route::post('store',   'AssetMeterAJAXController@store');
    Route::post('del',     'AssetMeterAJAXController@del');
    Route::post('detail',  'AssetMeterAJAXController@detail');
    Route::post('update',  'AssetMeterAJAXController@update');
});

// DEBUG
Route::prefix('part')->group(function() {
    Route::post('/',       'AssetPartAJAXController@master');
    Route::post('store',   'AssetPartAJAXController@store');
    Route::post('del',     'AssetPartAJAXController@del');
    Route::post('detail',  'AssetPartAJAXController@detail');
    Route::post('update',  'AssetPartAJAXController@update');
});