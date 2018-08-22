<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetDowntimeAPIController extends Controller
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

    // Split Date and Time
	private function splitDT($dt) {
		if(empty($dt)) return ['', ''];

		$datetime = new DateTime($dt);

		$date = $datetime->format('Y-m-d');
		$time = $datetime->format('H:i');

		return [$date, $time];
	}

	// PUBLIC
    // Mengambil options field | GET
    public function options() {
    	// Semi foreign keys
    	$downtime 	= ['Emergency', 'Planned Maintenance', 'Project', 'Other'];
    	$cause 		= ['Operation', 'Maintenance', 'Other'];

    	// Foreign keys
    	$work_order 	= DB::table('workorder')->select('id', 'note')->get();
        $reported_by 	= DB::table('users')->select('id', 'full_name')->get();

        // Check foreign keys
        if($work_order->count() == 0 || $reported_by->count() == 0) {
        	return response(['message' => 'workorder or users table is empty!'], 200);
        }

        $status = 'ok';

        return response([
            compact('status', 'downtime', 'cause', 'work_order', 'reported_by')
        ], 200);
    }

    // Ambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_downtime')
			->select('id', 'start_time', 'end_time', 'hours', 'note')
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
            'asset_id'	=> 'required',
            'st_date' 	=> 'required|date',
            'st_time'	=> 'required|date_format:H:i',
            'et_date' 	=> 'required|date',
            'et_time' 	=> 'required|date_format:H:i',
            'hours' 	=> 'required|int',
            'downtime' 	=> 'required',		// Advanced Validation (string)
            'cause' 	=> 'required',		// Advanced Validation (string)
            'work_order' 	=> 'required',	// Advanced Validation (id)
            'reported_by' 	=> 'required'	// Advanced Validation (id)
            // 'reported_date'
            // 'reported_time'
            // 'note'
        ]);

        $now 		= new DateTime();
        $last_id 	= $this->getID();
        $asset_id 	= request('asset_id');

        $start_time = request('st_date').' '.request('st_time');
	    $end_time 	= request('et_date').' '.request('et_time');

	    $reported_time = null;
	    if(!empty(request('reported_date')) && !empty(request('reported_time'))) {
	        $reported_time = request('reported_date').' '.request('reported_time');
	    }
        
        DB::table('asset_downtime')->insert([
	        'id'                => $last_id,
	        'asset_id'          => $asset_id,

	        'start_time'        => $start_time,
	        'end_time' 			=> $end_time,
	        'hours'       		=> request('hours'),
	        'downtime_type_id'	=> request('downtime'),
	        'downtime_cause_id'	=> request('cause'),
	        'wo_id'         	=> request('work_order'),
	        'reported_by_id'    => request('reported_by'),
	        'reported_time'		=> $reported_time,
	        'note'				=> request('note'),

	        'shift_id'          => '',
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
            'asset_downtime_id' => 'required'
        ]);

        $asset_downtime_id = request('asset_downtime_id');

	    DB::table('asset_downtime')
		    ->where('id', '=', $asset_downtime_id)
		    ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
        $this->validate(request(), [
            'asset_downtime_id' => 'required'
        ]);

        $asset_downtime_id = request('asset_downtime_id');

        $datas = DB::table('asset_downtime')
			->select('id', 'start_time', 'end_time', 'hours', 'downtime_type_id', 'downtime_cause_id', 'wo_id', 'reported_by_id', 'reported_time', 'note')
			->where('id', '=', $asset_downtime_id)
			->get();

        if($datas->count() == 0) {
            return response(['message' => 'id was not found'], 200);
        }

        $datas = $datas[0];

		// Formats fix
		$datas->start_time      = $this->splitDT($datas->start_time);
		$datas->end_time        = $this->splitDT($datas->end_time);
		$datas->reported_time   = $this->splitDT($datas->reported_time);

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    // Menyimpan hasil edit | POST
    public function update() {
        $this->validate(request(), [
            'asset_downtime_id'	=> 'required',
            'st_date' 		=> 'required|date',
            'st_time'		=> 'required|date_format:H:i',
            'et_date' 		=> 'required|date',
            'et_time' 		=> 'required|date_format:H:i',
            'hours' 		=> 'required|int',
            'downtime' 		=> 'required',	// Advanced Validation (string)
            'cause' 		=> 'required',	// Advanced Validation (string)
            'work_order' 	=> 'required',	// Advanced Validation (id)
            'reported_by' 	=> 'required'	// Advanced Validation (id)
            // 'reported_date'
            // 'reported_time'
            // 'note'
        ]);

        $now = new DateTime();
		$asset_downtime_id = request('asset_downtime_id');

        $start_time = request('st_date').' '.request('st_time');
	    $end_time 	= request('et_date').' '.request('et_time');

	    $reported_time = null;
	    if(!empty(request('reported_date')) && !empty(request('reported_time'))) {
	        $reported_time = request('reported_date').' '.request('reported_time');
	    }

        DB::table('asset_downtime')
		    ->where('id', $asset_downtime_id)
		    ->update([
		        'start_time'        => $start_time,
		        'end_time' 			=> $end_time,
		        'hours'       		=> request('hours'),
		        'downtime_type_id'	=> request('downtime'),
		        'downtime_cause_id'	=> request('cause'),
		        'wo_id'         	=> request('work_order'),
		        'reported_by_id'    => request('reported_by'),
		        'reported_time'		=> $reported_time,
		        'note'				=> request('note'),
		        'modified_time'     => $now,
	        	'modified_id'       => $this->user_id
		    ]);
        
        return response(['status' => 'ok'], 200);
    }
}