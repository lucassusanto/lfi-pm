<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetDepreciationController extends Controller
{
    //
	public function new() {
		return view('asset.depreciation.new');
	}
}
