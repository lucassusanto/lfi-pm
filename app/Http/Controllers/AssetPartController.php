<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetPartController extends Controller
{
    //
	public function new() {

		return view('asset.part.new');
	}

	public function tabel() {
		return view('asset.part.tabel');
	}
}
