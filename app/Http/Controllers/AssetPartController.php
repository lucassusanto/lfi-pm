<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use DateTime;

class AssetPartController extends Controller
{
    //
	private $user_id = '1000000';

	public function new() {

		$item = DB::table('inventory')
		->select('id','in_no')
		->get();

		$weight_uom	= DB::table('uom')
		->select('id', 'uom')
		->get();

		return view('asset.part.new', [
			'item' 			=> $item,
			'weight_uom' 	=> $weight_uom 
		]);
	}

	public function commit_new(Request $request) {

		$now 			= new DateTime();
		$asset_id		= '10008';

		$last_id 		= DB::table('asset_part')
		->select('id')
		->orderBy('id','desc')
		->take(1)
		->get();

		if($last_id->count()) {
			$last_id = $last_id[0] -> id + 1;
		}
		else {
			$last_id = 1;
		}

		DB::table('asset_part')->insert([
			'id'				=> $last_id,
			'asset_id'			=> $asset_id,
			'in_id'				=> $request ->item,
			'type_id'			=> $request ->type,
			'qty'				=> $request ->qty,
			'uom_id'			=> $request ->weight_uom,
			'note'				=> $request ->notes,
			'modified_time'     => $now,
			'modified_id'       => $this->user_id,
			'created_time'      => $now,
			'created_id'        => $this->user_id
		]);

		return view('asset.part.new');

	}

	public function tabel() {
		return view('asset.part.tabel');
	}
}
