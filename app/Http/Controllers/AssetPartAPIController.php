<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetPartAPIController extends Controller
{
	private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_part')
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
    	$item 			= DB::Table('inventory')->select('id','in_no')->get();
    	$weight_uom 	= DB::table('uom')->select('id', 'uom')->get();

    	// Semi foreign keys
    	$type 	= ['Major', 'Routine'];

    	// Check foreign keys
        if($item->count() == 0 || $weight_uom->count() == 0) {
        	return response(['message' => 'inventory or uom table is empty!'], 200);
        }

        $status = 'ok';

        return response([
            compact('status', 'item', 'type', 'weight_uom')
        ], 200);
    }

    // Ambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_part')
			->select('asset_part.id', 'asset_part.asset_id', 'inventory.in_no', 'asset_part.type_id', 'asset_part.note')
			->join('inventory', 'asset_part.in_id', '=', 'inventory.id')
			->where('asset_id','=', $asset_id)
			->get();

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    // Menambah data baru | POST
    public function store() {
        $this->validate(request(), [
            'asset_id'		=> 'required',
            'item' 			=> 'required',  // Advanced Validation
            'type'			=> 'required',	// Advanced Validation
            // 'qty'
            'weight_uom' 	=> 'required',	// Advanced Validation
            'note' 			=> 'required'
        ]);

        $now 		= new DateTime();
        $last_id 	= $this->getID();
        
        DB::table('asset_part')->insert([
			'id'				=> $last_id,
			'asset_id'			=> request('asset_id'),
			'in_id'				=> request('item'),
			'type_id'			=> request('type'),
			'qty'				=> request('qty'),
			'uom_id'			=> request('weight_uom'),
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
            'asset_part_id' => 'required'
        ]);

        $asset_part_id = request('asset_part_id');

	    DB::table('asset_part')
		    ->where('id', '=', $asset_part_id)
		    ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
		$this->validate(request(), [
			'asset_part_id' => 'required'
		]);

		$asset_part_id = request('asset_part_id');

		$datas = DB::table('asset_part')
			->select('id', 'in_id', 'type_id', 'qty', 'uom_id', 'note')
			->where('asset_part.id', '=', $asset_part_id)
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
            'asset_part_id'	=> 'required',
            'item' 			=> 'required',  // Advanced Validation
            'type'			=> 'required',	// Advanced Validation
            // 'qty'
            'weight_uom' 	=> 'required',	// Advanced Validation
            'note' 			=> 'required'
        ]);

        $now 			= new DateTime();
        $asset_part_id 	= request('asset_part_id');
        
        DB::table('asset_part')
        	->where('id', $asset_part_id)
        	->update([
				'in_id'         => request('item'),
				'type_id'		=> request('type'),
				'qty'			=> request('qty'),
				'uom_id'		=> request('weight_uom'),
				'note'			=> request('note'),
				'modified_time' => $now,
				'modified_id'	=> $this->user_id
		    ]);

        return response(['status' => 'ok'], 200);
    }
}
