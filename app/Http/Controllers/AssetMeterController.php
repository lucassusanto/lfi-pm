<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DateTime;


class AssetMeterController extends Controller
{

	private $user_id = '1000000';

	private function getID() {

		$last_id = DB::table('asset_meter')
		->select('id')->orderBy('id', 'desc')
		->take(1)->get();

		if($last_id->count())   $last_id = $last_id[0]->id + 1;
		else                    $last_id = 1;

		return $last_id;
	}


	private function getAssetNote($asset_id) {
		$asset_data = DB::table('asset')->select('note')
		->where('id', '=', $asset_id)
		->get();

		if($asset_data->count() < 1)
			return false;

		return $asset_data[0]->note;  
	}	

	public function new($id) {
		$note = $this->getAssetNote($id);

		$type = DB::Table('meter_type')
		->select('id','type')
		->get();

		$uom = DB::Table('uom')
		->select('id','uom')
		->get();

		return view('asset.meter.new', [

			'asset_id'      => $id,
			'asset_note'    => $note,
			'meter_type'	=> $type,
			'meter_uom'		=> $uom
		]);
	}

	public function commit_new(Request $request, $id) {

		$last_id = DB::table('asset_meter')
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

		$now = new DateTime();

		DB::table('asset_meter')->insert([
			'id'                => $last_id,
			'asset_id'          => $id,
			'meter_no'          => $request->no,
			'type_id'			=> $request->type,
			'reading_uom_id'	=> $request->uom,
			'reading'			=> NULL,
			'is_rollover'		=> NULL,
			'time_taken'		=> NULL,
			'rollup_type_id'	=> $request->rollup,
			'rollover_reading'	=> $request->rr,
			'rollover_count'	=> NULL,
			'note'				=> $request->note,
			'modified_time'     => $now,
			'modified_id'       => $this->user_id,
			'created_time'      => $now,
			'created_id'        => $this->user_id
		]);
		return redirect('asset/'.$id);
	}

	public function index($id) {

		$note = $this->getAssetNote($id);

		$datas = DB::table('asset_meter')
		->select('id','meter_no','reading','time_taken','note')
		->where('asset_id', '=', $id)
		->get();

		return view ('asset.meter.master',[
			'asset_id'		=> $id,
			'asset_note'	=> $note,
			'datas'			=> $datas
		]);
	}


	public function commit_delete(Request $request, $id) {
		$meter_id = $request->id;

		DB::table('asset_meter')
		->where('id', '=', $meter_id)
		->delete();

		return redirect('asset/'.$id.'/meter');

	}

	public function show_edit(Request $request, $id) {

		$meter_id = $request->id;

		$note = $this->getAssetNote($id);

		$type = DB::Table('meter_type')
		->select('id','type')
		->get();

		$uom = DB::Table('uom')
		->select('id','uom')
		->get();

		$asset_meter = DB::table('asset_meter')
		->select()
		->where('id','=', $meter_id)
		->get();

		if($asset_meter->count()) {
			return view ('asset.meter.edit', [
				'data'			=> $asset_meter[0],
				'asset_id'      => $id,
				'asset_note'    => $note,
				'meter_type'	=> $type,
				'meter_uom'		=> $uom
			]);
		}

		return view('asset.info', [
			'title' => 'Error!',
			'msg' => 'Asset data '.$id.' was not found!',
			'link' => 'asset'
		]);

	}

	public function commit_edit(Request $request, $id) {

		$now = new DateTime();
		$meter_id = $request->id;

		DB::table('asset_meter')
		->where('id', $meter_id)
		->update([
			'meter_no'          => $request->no,
			'type_id'			=> $request->type,
			'reading_uom_id'	=> $request->uom,
			'reading'			=> NULL,
			'is_rollover'		=> NULL,
			'time_taken'		=> NULL,
			'rollup_type_id'	=> $request->rollup,
			'rollover_reading'	=> $request->rr,
			'rollover_count'	=> NULL,
			'note'				=> $request->note,
			'modified_time'     => $now,
			'modified_id'       => $this->user_id,
			'created_time'      => $now,
			'created_id'        => $this->user_id
		]);

		return redirect('asset/'.$id.'/meter');
	}

}

