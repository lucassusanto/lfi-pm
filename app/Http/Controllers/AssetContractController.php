<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetContractController extends Controller
{
	// view: contract, status (valid, expired, canceled), note, start date, end date, comment

	private $tableName = 'asset_contract';
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_contract')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // Get asset note
    private function getAssetNote($asset_id) {
        $asset_data = DB::table('asset')->select('note')
            ->where('id', '=', $asset_id)
            ->get();

        if($asset_data->count() < 1)
            return false;

        return $asset_data[0]->note;  
    }

    // PUBLIC
    public function index($id) {
        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg' => 'Asset data '.$id.' was not found!',
                'link' => 'asset'
            ]);

        $datas = DB::table('asset_contract')
            ->select('id', 'contract', 'modified_time')
            ->where('asset_id', '=', $id)
            ->get();

        return view('asset.contract.master', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'datas'         => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data($id) {
        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Asset data '.$id.' was not found!',
                'link'  => 'asset'
            ]);

        return view('asset.contract.new', [
            'asset_id'      => $id,
            'asset_note'    => $note
        ]);
    }

    // Menambah data baru | POST
    public function commit_new_data(Request $request, $id) {
        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table('asset_contract')->insert([
            'id'                => $last_id,
            'asset_id'          => $id,
            'contract'           => $request->contract,
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
        $contract_id = $request->id;

        $datas = DB::table('asset_contract')
            ->select('id', 'contract')
            ->where('id', '=', $contract_id)
            ->get();

        if($datas->count() < 1)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'contract data was not found!',
                'link'  => 'asset/contract'.$id
            ]);

        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Asset data '.$id.' was not found!',
                'link'  => 'asset'
            ]);
        
        return view('asset.contract.edit', [
            'asset_id'      => $id,
            'asset_note'    => $note,
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
                'contract'       => $request->contract,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);
        
        return redirect('asset/'.$id.'/contract');
    }
}
