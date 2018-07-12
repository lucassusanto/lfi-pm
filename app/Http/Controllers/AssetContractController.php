<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetContractController extends Controller
{
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin
    private $asset_note, $contracts;

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_contract')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // Check asset ID if the asset exists or not
    private function getNote($id) {
        $note = DB::table('asset')
            ->select('note')
            ->where('id', '=', $id)
            ->get();

		if($note->count() < 1) return false;
		
        return $note[0]->note;
    }

    // Check contracts table if any data exists (required as fk in asset_contract)
    private function getContract($id) {
        $contracts = DB::table('contract')
            ->select('id', 'contract')
            ->get();

        if($contracts->count() < 1) return false;

        return $contracts;
	}
	
	private function show_error($msg) {
		return view('asset.info', [
			'title' => 'Error!',
			'msg'   => $msg,
			'link'  => 'asset'
		]);
    }

    // PUBLIC
    public function index($id) {
        $note = $this->getNote($id);
		if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        $contracts = $this->getContract($id);
        if($contracts == false)
            return $this->show_error('Contract data was not found! Please add at least 1 data in contract (not asset contract) table');


        $datas = DB::table('asset_contract')
            ->select('asset_contract.id', 'contract.contract', 'asset_contract.status_id', 'asset_contract.start_date', 'asset_contract.end_date')
            ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
            ->where('asset_contract.asset_id', '=', $id)
            ->get();
            
        return view('asset.contract.master', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'datas'         => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data($id) {
        $note = $this->getNote($id);
		if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        $contracts = $this->getContract($id);
        if($contracts == false)
            return $this->show_error('Contract data was not found! Please add at least 1 data in contract (not asset contract) table');


        return view('asset.contract.new', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'contracts'     => $contracts
        ]);
    }

    // Menambah data baru | POST
    public function commit_new_data(Request $request, $id) {
        $now = new DateTime();
        $last_id = $this->getID();

        DB::table('asset_contract')->insert([
            'id'                => $last_id,
            'asset_id'          => $id,
            'contract_id'       => $request->contract,
            'note'              => $request->note,
            'status_id'         => $request->status,
            'start_date'        => $request->sd,
            'end_date'          => $request->ed,
            'comment'           => '',
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return redirect('asset/'.$id.'/contract');
    }

    // Menghapus data | POST
    public function commit_delete(Request $request, $id) {
        $contract_id = $request->id;

        DB::table('asset_contract')
            ->where('id', '=', $contract_id)
            ->delete();

        return redirect('asset/'.$id.'/contract');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request, $id) {
        $note = $this->getNote($id);
		if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        $contracts = $this->getContract($id);
        if($contracts == false)
            return $this->show_error('Contract data was not found! Please add at least 1 data in contract (not asset contract) table');


        $contract_id = $request->id;

        $datas = DB::table('asset_contract')
            ->select('id', 'contract_id', 'note', 'status_id', 'start_date', 'end_date')
            ->where('id', '=', $contract_id)
            ->get();

        if($datas->count() < 1)
            return show_error('Asset contract data was not found!');
        
        return view('asset.contract.edit', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'contracts'     => $contracts,
            'data'          => $datas[0]
        ]);
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request, $id) {
        $now = new DateTime();
        $contract_id = $request->id;

        DB::table('asset_contract')
            ->where('id', $contract_id)
            ->update([
                'contract_id'       => $request->contract,
                'note'              => $request->note,
                'status_id'         => $request->status,
                'start_date'        => $request->sd,
                'end_date'          => $request->ed,
                'modified_time'     => $now,
                'modified_id'       => $this->user_id
            ]);
        
        return redirect('asset/'.$id.'/contract');
    }
}
