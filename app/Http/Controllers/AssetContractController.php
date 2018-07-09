<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetContractController extends Controller
{
    public function new() {
		return view('asset.contract.new');
	}
}
