<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use DateTime;

class AssetPartController extends Controller
{
	private $user_id = '1000000';

	// Get last data ID
	private function getID() {
		$last_id = DB::table('asset_part')
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
		
		$datas = DB::table('asset_part')
		->join('inventory','asset_part.in_id','=','inventory.id')
		->select('asset_part.id','asset_part.asset_id','inventory.in_no','asset_part.type_id','asset_part.note')
		->where('asset_id','=', $id)
		->get();

		return view('asset.part.tabel', [
			'asset_id' 		=> $id,
			'asset_note' 	=> $note,
			'datas' 		=> $datas
		]);
	}

	public function new($id) {
		$note = $this->getAssetNote($id);

		if($note == false)
			return view('asset.info', [
				'title' => 'Error!',
				'msg' => 'Asset data '.$id.' was not found!',
				'link' => 'asset'
			]);

		$item = DB::table('inventory')
		->select('id','in_no')
		->get();

		$weight_uom	= DB::table('uom')
		->select('id', 'uom')
		->get();

		return view('asset.part.new', [
			'asset_id' 		=> $id,
			'asset_note'    => $note,
			'item' 			=> $item,
			'weight_uom' 	=> $weight_uom 
		]);
	}

	public function commit_new(Request $request, $id) {
		$now 			= new DateTime();
		$last_id 		= $this->getID();

		DB::table('asset_part')->insert([
			'id'				=> $last_id,
			'asset_id'			=> $id,
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

		// return redirect('asset/'.$id.'/part'); // ORI
		return redirect('asset/'.$id);
	}

	public function commit_delete(Request $request, $id) {

		$part_id = $request->id;

		$affected = DB::table('asset_part')
		->where('id','=',$part_id)
		->delete();

		// return redirect('asset/'.$id.'/part'); // ORI
		return redirect('asset/'.$id);
	}


	public function show_edit(Request $request, $id)
	{
		$note = $this->getAssetNote($id);

		if($note == false)
			return view('asset.info', [
				'title' => 'Error!',
				'msg' => 'Asset data '.$id.' was not found!',
				'link' => 'asset'
			]);


		$item = DB::table('inventory')
		->select('id','in_no')
		->get();

		$weight_uom	= DB::table('uom')
		->select('id', 'uom')
		->get();


		$part_id = $request->id;

		$asset_part = DB::table('asset_part')
		->select()
		->where('id','=', $part_id)
		->get();

		if($asset_part->count()) {
			return view ('asset.part.edit', [
				'asset_id' 		=> $id,
				'asset_note'	=> $note,
				'asset_part'	=> $asset_part[0],
				'item'			=> $item,
				'weight_uom'	=> $weight_uom
			]);
		}

		return view('asset.info', [
			'title' => 'Error!',
			'msg' => 'Asset data id was not found!',
			'link' => 'asset'
		]);
	}

	public function commit_edit(Request $request, $id) {

		$now = new DateTime();
		$part_id = $request->id;

		DB::table('asset_part')
		->where('id', $part_id)
		->update ([
			'asset_id'			=> $id,
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
		// return redirect('asset/'.$id.'/part'); // ORI
		return redirect('asset/'.$id);
	}
}
