<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetDownTimeController extends Controller
{
    //
	public function new() {
		return view('asset.downtime.new');
	}
}
