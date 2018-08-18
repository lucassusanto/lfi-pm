<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetContractAPIController extends Controller
{
    private $user_id = '1000000'; // Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_contract')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // PUBLIC
    // Mengambil options field | GET
    public function options() {
        $contract = DB::table('contract')->select('id', 'contract')->get();
        $status = ['Valid', 'Expired', 'Canceled'];

        return response([
            'status'    => 'ok',
            'contract'  => $contract,
            'status'    => $status
        ], 200);
    }

    // Ambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_contract')
            ->select('asset_contract.id', 'contract.contract', 'asset_contract.note', 'asset_contract.status_id')
            ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
            ->where('asset_contract.asset_id', '=', $asset_id)
            ->get();

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    // Menambah data baru | POST
    public function store(Request $request) {
        $this->validate(request(), [
            'asset_id'      => 'required',
            'contract_id'   => 'required',
            'status_id'     => 'required', // Advanced Validation
            'sd'            => 'required',
            'ed'            => 'required',
            'note'          => 'required'
        ]);

        $now        = new DateTime();
        $last_id    = $this->getID();
        $asset_id   = request('asset_id');
        
        DB::table('asset_contract')->insert([
            'id'                => $last_id,
            'asset_id'          => $asset_id,
            'contract_id'       => request('contract_id'),
            'status_id'         => request('status_id'),
            'start_date'        => request('sd'),
            'end_date'          => request('ed'),
            'note'              => request('note'),
            'comment'           => '',
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
            'asset_contract_id' => 'required'
        ]);

        $asset_contract_id = request('asset_contract_id');

        DB::table('asset_contract')
            ->where('id', '=', $asset_contract_id)
            ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
        $this->validate(request(), [
            'asset_contract_id' => 'required'
        ]);

        $asset_contract_id = request('asset_contract_id');

        $datas = DB::table('asset_contract')
            ->select('asset_contract.id', 'asset_contract.contract_id', 'contract.contract', 'asset_contract.status_id', 'asset_contract.start_date', 'asset_contract.end_date', 'asset_contract.note')
            ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
            ->where('asset_contract.id', '=', $asset_contract_id)
            ->get();

        if($datas->count() < 1) {
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
            'asset_contract_id' => 'required',
            'contract_id'   => 'required',
            'status_id'     => 'required', // Advanced Validation
            'sd'            => 'required',
            'ed'            => 'required',
            'note'          => 'required'
        ]);

        $now = new DateTime();
        $asset_contract_id = request('asset_contract_id');

        DB::table('asset_contract')
            ->where('id', $asset_contract_id)
            ->update([
                'contract_id'       => request('contract_id'),
                'status_id'         => request('status_id'),
                'start_date'        => request('sd'),
                'end_date'          => request('ed'),
                'note'              => request('note'),
                'modified_time'     => $now,
                'modified_id'       => $this->user_id
            ]);

        return response(['status' => 'ok'], 200);
    }
}
