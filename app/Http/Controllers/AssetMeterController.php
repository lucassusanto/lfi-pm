<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetMeterController extends Controller
{
    //
	public function new() {
		return view('asset.meter.new');
	}
}
