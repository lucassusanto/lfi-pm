<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetDepreciationAPIController extends Controller
{
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_depreciation')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // PUBLIC
    // Ambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_depreciation')
            ->select('id', 'start_date', 'end_date', 'end_value', 'note', 'depreciation_rate')
            ->where('asset_id', '=', $asset_id)
            ->get();

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    // Menambah data baru | POST
    public function store() {
        $this->validate(request(), [
            'asset_id' => 'required',
            'sd' => 'required',
            'ed' => 'required',
            'dr' => 'required',
            'sv' => 'required',
            'ev' => 'required'
        ]);

        $now = new DateTime();
        $last_id = $this->getID();

        $asset_id   = request('asset_id');
        
        DB::table('asset_depreciation')->insert([
            'id'                => $last_id,
            'asset_id'          => $asset_id,

            'start_date'        => request('sd'),
            'end_date'          => request('ed'),
            'depreciation_rate' => request('dr'),
            'start_value'       => request('sv'),
            'end_value'         => request('ev'),
            'note'           	=> request('note'),

            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);

        return response(['status' => 'ok'], 200);
    }

    // Menghapus data | POST
    public function del() {
        $this->validate(request(), [
            'asset_depreciation_id' => 'required'
        ]);

        $asset_depreciation_id = request('asset_depreciation_id');

        DB::table('asset_depreciation')
            ->where('id', '=', $asset_depreciation_id)
            ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
        $this->validate(request(), [
            'asset_depreciation_id' => 'required'
        ]);

        $asset_depreciation_id = request('asset_depreciation_id');

        $datas = DB::table('asset_depreciation')
             ->select('id', 'start_date', 'end_date', 'depreciation_rate', 'start_value', 'end_value', 'note')
             ->where('id', '=', $asset_depreciation_id)
             ->get();

        if($datas->count() == 0) {
            return response(['message' => 'id was not found'], 200);
        }

        return response([
            'status' => 'ok',
            'datas'  => $datas[0]
        ], 200);
    }

    // Menyimpan hasil edit | POST
    public function update() {
        $this->validate(request(), [
            'asset_depreciation_id' => 'required',
            'sd' => 'required',
            'ed' => 'required',
            'dr' => 'required',
            'sv' => 'required',
            'ev' => 'required'
        ]);

        $now = new DateTime();
        $asset_depreciation_id = request('asset_depreciation_id');

        DB::table('asset_depreciation')
            ->where('id', $asset_depreciation_id)
            ->update([
                'start_date'        => request('sd'),
                'end_date'          => request('ed'),
                'depreciation_rate' => request('dr'),
                'start_value'       => request('sv'),
                'end_value'         => request('ev'),
                'note'           	=> request('note'),
                'modified_time'     => $now,
                'modified_id'       => $this->user_id,
            ]);
        
        return response(['status' => 'ok'], 200);
    }
}