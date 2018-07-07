<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetContractController extends Controller
{
    // GET
    public function index() {
        $datas = "";

        return view('asset.contract.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.contract.new');
    }
    
    public function edit() {
        return view('asset.contract.edit');
    }
}
