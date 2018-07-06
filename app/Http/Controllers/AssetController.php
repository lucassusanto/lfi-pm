<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetController extends Controller
{
    public function index() {
        return view('asset.master');
    }

    public function new() {
        return view('asset.new');
    }

    public function edit() {
        return view('asset.edit');
    }

    // Debug
    public function layout() {
        return view('layouts.lfi');
    }
}
