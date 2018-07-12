<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use DateTime;

class AssetDownTimeController extends Controller
{
    //
	public function new() {
		return view('asset.downtime.new');
	}
}
