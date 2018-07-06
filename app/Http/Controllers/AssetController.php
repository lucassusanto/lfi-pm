<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AssetController extends Controller
{
    public function index() {
        $datas = DB::table('asset')
            ->join('asset_type', 'asset.type_id', '=', 'asset_type.id')
            ->select('asset.asset_no', 'asset_type.type', 'asset.status_id', 'asset.category_id', 'asset.note')
            ->get();

        return view('asset.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.new');
    }
    
    public function edit() {
        return view('asset.edit');
    }
}
