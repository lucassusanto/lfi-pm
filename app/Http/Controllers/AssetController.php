<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetController extends Controller
{
    /*
    |   Asset
    */
    public function index() {
        return view('asset.master');
    }
    public function new() {
        return view('asset.new');
    }
    public function edit() {
        return view('asset.edit');
    }

    /*
    |   Asset Type
    */
    public function type() {
        return view('asset.type');
    }
    public function type_new() {
        return 'Not available';
    }
    public function type_edit() {
        return 'Not available';
    }
}
