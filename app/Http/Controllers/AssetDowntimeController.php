<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetDownTimeController extends Controller
{
	private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_downtime')
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

        $datas = DB::table('asset_downtime')
            ->select('id', 'start_time', 'end_time', 'hours', 'note')
            ->where('asset_id', '=', $id)
            ->get();
            
        return view('asset.downtime.master', [
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


		$wos = DB::table('work_order')
			->select('id', 'note')
			->get();

		$users = DB::table('work_order')
			->select('id', 'note')
			->get();



        return view('asset.downtime.new', [
            'asset_id'      => $id,
			'asset_note'    => $note,
			'work_orders'	=> $wos,
			'users'			=> $users
        ]);
	}
	
    // Menambah data baru | POST
    public function commit_new_data(Request $request, $id) {
        $now = new DateTime();
		$last_id = $this->getID();

        DB::table('asset_downtime')->insert([
            'id'                => $last_id,
			'asset_id'          => $id,
			'downtime_type_id'	=> '',
			'downtime_cause_id'	=> '',
            'start_time'        => $request->sd,
			'shift_id'          => $request->ed,
            'end_time' 			=> $request->rate,
			'hours'       		=> $request->sv,
			'wo_id'         	=> $request->ev,
			'reported_by_id'    => $request->note,
			'reported_time'		=> '',
			'note'				=> '',
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return redirect('asset/'.$id.'/downtime');
    }

    // Menghapus data | POST
    public function commit_delete(Request $request, $id) {
        $dep_id = $request->id;

        DB::table('asset_downtime')
            ->where('id', '=', $dep_id)
            ->delete();

        return redirect('asset/'.$id.'/downtime');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request, $id) {
        $note = $this->getNote($id);

		if($note == false)
			return $this->show_error('Asset data '.$id.' was not found!');

        $dep_id = $request->id;

        $datas = DB::table('asset_downtime')
            ->select('id', 'start_date', 'end_date', 'depreciation_rate', 'start_value', 'end_value', 'note')
            ->where('id', '=', $dep_id)
            ->get();
        
        return view('asset.downtime.edit', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'data'          => $datas[0]
        ]);
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request, $id) {
        $now = new DateTime();
        $contract_id = $request->id;

        DB::table('asset_downtime')
            ->where('id', $contract_id)
            ->update([
				'start_date'        => $request->sd,
				'end_date'          => $request->ed,
				'depreciation_rate' => $request->rate,
				'start_value'       => $request->sv,
				'end_value'         => $request->ev,
				'note'           	=> $request->note,
				'modified_time'     => $now,
				'modified_id'       => $this->user_id,
            ]);
        
        return redirect('asset/'.$id.'/downtime');
    }
}
