<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetMeterAPIController extends Controller
{
	private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_meter')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

	// PUBLIC
    // Mengambil options field | GET
    public function options() {
    	// Foreign keys
    	$type 			= DB::Table('meter_type')->select('id','type')->get();
    	$reading_unit 	= DB::table('uom')->select('id', 'uom')->get();

    	// Semi foreign keys
    	$rollup 	= ['None', 'Rollup Change'];

    	// Check foreign keys
        if($type->count() < 1 || $reading_unit->count() < 1) {
        	return response(['message' => 'meter_type or uom table is empty!'], 200);
        }

        $status = 'ok';

        return response([
            compact('status', 'type', 'reading_unit', 'rollup')
        ], 200);
    }

    // Ambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_meter')
			->select('id', 'meter_no', 'reading', 'time_taken', 'note')
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
            'asset_id'			=> 'required',
            'no' 				=> 'required',
            // 'type'			// Advanced Validation
            // 'reading_unit'	// Advanced Validation
            // 'reading'
            'rollup' 			=> 'required',		// Advanced Validation
            'rollover_reading' 	=> 'required|int'
            // 'note'
        ]);

        $now 		= new DateTime();
        $last_id 	= $this->getID();
        
        DB::table('asset_meter')->insert([
	        'id'                => $last_id,
			'asset_id'          => request('asset_id'),
			'meter_no'          => request('no'),
			'type_id'			=> request('type'),
			'reading_uom_id'	=> request('reading_unit'),
			'reading'			=> request('reading'),
			'is_rollover'		=> NULL,
			'time_taken'		=> NULL,
			'rollup_type_id'	=> request('rollup'),
			'rollover_reading'	=> request('rollover_reading'),
			'rollover_count'	=> NULL,
			'note'				=> request('note'),
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
            'asset_meter_id' => 'required'
        ]);

        $asset_meter_id = request('asset_meter_id');

	    DB::table('asset_meter')
		    ->where('id', '=', $asset_meter_id)
		    ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
		$this->validate(request(), [
			'asset_meter_id' => 'required'
		]);

		$asset_meter_id = request('asset_meter_id');

		$datas = DB::table('asset_meter')
			->select('id', 'meter_no', 'type_id', 'reading_uom_id', 'reading', 'rollup_type_id', 'rollover_reading', 'note')
			->where('id', '=', $asset_meter_id)
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
            'asset_meter_id'	=> 'required',
            'no' 				=> 'required',
            // 'type'			// Advanced Validation
            // 'reading_unit'	// Advanced Validation
            // 'reading'
            'rollup' 			=> 'required',		// Advanced Validation
            'rollover_reading' 	=> 'required|int'
            // 'note'
        ]);

        $now 			= new DateTime();
        $asset_meter_id = request('asset_meter_id');
        
        DB::table('asset_meter')
        	->where('id', $asset_meter_id)
        	->update([
				'meter_no'          => request('no'),
				'type_id'			=> request('type'),
				'reading_uom_id'	=> request('reading_unit'),
				'reading'			=> request('reading'),
				'rollup_type_id'	=> request('rollup'),
				'rollover_reading'	=> request('rollover_reading'),
				'note'				=> request('note'),
				'modified_time'     => $now,
				'modified_id'       => $this->user_id
		    ]);

        return response(['status' => 'ok'], 200);
    }
}