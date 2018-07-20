<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

use DateTime;

class AssetContractAJAXController extends Controller
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

    public function getOptions() {
        $contract = DB::table('contract')->select('id', 'contract')->get();
        $status = ['Valid', 'Expired', 'Canceled'];

        return response([
            'status'    => 'ok',
            'contract'  => $contract,
            'status'    => $status
        ], 200);
    }

    public function load() {
        $asset_id = Input::get('asset_id');
        $datas = [];

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

    public function create(Request $request) {        
        $asset_id   = Input::get('asset_id');

        $contract   = Input::get('contract');
        $status     = Input::get('status');
        $sd         = Input::get('sd');
        $ed         = Input::get('ed');
        $note       = Input::get('note');

        $now        = new DateTime();
        $last_id    = $this->getID();
        
        DB::table('asset_contract')->insert([
            'id'                => $last_id,
            'asset_id'          => $asset_id,
            'contract_id'       => $contract,
            'status_id'         => $status,
            'start_date'        => $sd,
            'end_date'          => $ed,
            'note'              => $note,
            'comment'           => '',
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return response(['status' => 'OK'], 200);
    }

    public function del() {
        $contract_id = Input::get('contract_id');

        DB::table('asset_contract')
            ->where('id', '=', $contract_id)
            ->delete();
        
        return response(['status' => 'OK'], 200);
    }

    public function show_edit() {
        $asset_contract_id = Input::get('asset_contract_id');

        $datas = DB::table('asset_contract')
            ->select('asset_contract.id', 'asset_contract.contract_id', 'contract.contract', 'asset_contract.status_id', 'asset_contract.start_date', 'asset_contract.end_date', 'asset_contract.note')
            ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
            ->where('asset_contract.id', '=', $asset_contract_id)
            ->get();

        if($datas->count() < 1) {
            return response([], 403);
        }

        return response([
            'status' => 'OK',
            'datas'  => $datas[0]
        ], 200);
    }

    public function commit_edit() {
        $now = new DateTime();
        $asset_contract_id = Input::get('asset_contract_id');

        $contract_id    = Input::get('contract_id');
        $note           = Input::get('note');
        $status_id      = Input::get('status_id');
        $start_date     = Input::get('start_date');
        $end_date       = Input::get('end_date');

        DB::table('asset_contract')
            ->where('id', $asset_contract_id)
            ->update([
                'contract_id'       => $contract_id,
                'note'              => $note,
                'status_id'         => $status_id,
                'start_date'        => $start_date,
                'end_date'          => $end_date,
                'modified_time'     => $now,
                'modified_id'       => $this->user_id
            ]);

        return response(['status' => 'OK'], 200);
    }
}
