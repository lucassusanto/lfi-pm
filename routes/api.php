<?php

Route::prefix('comment')->group(function() {
    Route::post('/',       'AssetCommentAPIController@master');
    Route::post('store',   'AssetCommentAPIController@store');
    Route::post('del',     'AssetCommentAPIController@del');
    Route::post('detail',  'AssetCommentAPIController@detail');
    Route::post('update',  'AssetCommentAPIController@update');
});

Route::prefix('contract')->group(function() {
    Route::post('/',       'AssetContractAPIController@master');
    Route::post('store',   'AssetContractAPIController@store');
    Route::post('del',     'AssetContractAPIController@del');
    Route::post('detail',  'AssetContractAPIController@detail');
    Route::post('update',  'AssetContractAPIController@update');

    Route::get('options',  'AssetContractAPIController@options');
});

Route::prefix('depreciation')->group(function() {
    Route::post('/',       'AssetDepreciationAPIController@master');
    Route::post('store',   'AssetDepreciationAPIController@store');
    Route::post('del',     'AssetDepreciationAPIController@del');
    Route::post('detail',  'AssetDepreciationAPIController@detail');
    Route::post('update',  'AssetDepreciationAPIController@update');
});

Route::prefix('downtime')->group(function() {
    Route::post('/',       'AssetDowntimeAPIController@master');
    Route::post('store',   'AssetDowntimeAPIController@store');
    Route::post('del',     'AssetDowntimeAPIController@del');
    Route::post('detail',  'AssetDowntimeAPIController@detail');
    Route::post('update',  'AssetDowntimeAPIController@update');

    Route::get('options',  'AssetDowntimeAPIController@options');
});

Route::prefix('meter')->group(function() {
    Route::post('/',       'AssetMeterAPIController@master');
    Route::post('store',   'AssetMeterAPIController@store');
    Route::post('del',     'AssetMeterAPIController@del');
    Route::post('detail',  'AssetMeterAPIController@detail');
    Route::post('update',  'AssetMeterAPIController@update');

    Route::get('options',  'AssetMeterAPIController@options');
});

Route::prefix('part')->group(function() {
    Route::post('/',       'AssetPartAPIController@master');
    Route::post('store',   'AssetPartAPIController@store');
    Route::post('del',     'AssetPartAPIController@del');
    Route::post('detail',  'AssetPartAPIController@detail');
    Route::post('update',  'AssetPartAPIController@update');

    Route::get('options',  'AssetPartAPIController@options');
});


Route::prefix('asset')->group(function() {
    Route::get('cekAssetNo',   'AssetController@cekNo');
    Route::get('cekAssetType', 'AssetTypeController@cekType');
});