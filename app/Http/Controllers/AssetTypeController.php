<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AssetTypeController extends Controller
{
    public function index() {
        $datas = DB::table('asset_type')->select('type', 'note')->get();

        return view('asset.type.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.type.new');
    }

    public function edit() {
        return view('asset.type.edit');
    }
}
