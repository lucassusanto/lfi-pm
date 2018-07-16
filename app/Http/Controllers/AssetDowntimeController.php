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
    
    // Required as foreign key (Work order)
    private function getWO() {
        $wos = DB::table('workorder')
        ->select('id', 'note')
        ->get();

        if($wos->count() < 1) return false;
        
        return $wos;
    }
    
    // Required as foreign key (reported_by_id)
    private function getUsers() {
        $users = DB::table('users')
        ->select('id', 'full_name')
        ->get();

        if($users->count() < 1) return false;
        
        return $users;
    }
    
    private function show_error($msg) {
      return view('asset.info', [
         'title' => 'Error!',
         'msg'   => $msg,
         'link'  => 'asset'
     ]);
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

 $wos = $this->getWO();
 if($wos == false)
     return $this->show_error('Work order table seems empty');

 $users = $this->getUsers();
 if($users == false)
     return $this->show_error('Users table seems empty');

 return view('asset.downtime.new', [
    'asset_id'      => $id,
    'asset_note'    => $note,
    'wos'	        => $wos,
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
        'start_time'        => $request->st_date.' '.$request->st_time,
        'end_time' 			=> $request->et_date.' '.$request->et_time,
        'hours'       		=> $request->hours,
        'downtime_type_id'	=> $request->downtime,
        'downtime_cause_id'	=> $request->dcause,
        'wo_id'         	=> $request->wo,
        'reported_by_id'    => $request->user,
        'reported_time'		=> $request->ra_date.' '.$request->ra_time,
        'note'				=> $request->note,
        'shift_id'          => '',
        'modified_time'     => $now,
        'modified_id'       => $this->user_id,
        'created_time'      => $now,
        'created_id'        => $this->user_id
    ]);
    return redirect('asset/'.$id);
}

    // Menghapus data | POST
public function commit_delete(Request $request, $id) {
    $downtime_id = $request->id;

    DB::table('asset_downtime')
    ->where('id', '=', $downtime_id)
    ->delete();

    return redirect('asset/'.$id.'/downtime');
}

    // Menampilkan detil data edit | POST
public function show_edit(Request $request, $id) {
    $note = $this->getNote($id);
    if($note == false)
     return $this->show_error('Asset data '.$id.' was not found!');

 $wos = $this->getWO();
 if($wos == false)
     return $this->show_error('Work order table seems empty');

 $users = $this->getUsers();
 if($users == false)
    return $this->show_error('Users table seems empty');


$downtime_id = $request->id;

$datas = DB::table('asset_downtime')
->select('id', 'start_time', 'end_time', 'hours', 'downtime_type_id', 'downtime_cause_id', 'wo_id', 'reported_by_id', 'reported_time', 'note')
->where('id', '=', $downtime_id)
->get();

if($datas->count() < 1)
    return $this->show_error('Asset Downtime data was not found');


$datas = $datas[0];

$datas->start_time      = $this->splitDT($datas->start_time);
$datas->end_time        = $this->splitDT($datas->end_time);
$datas->reported_time   = $this->splitDT($datas->reported_time);


return view('asset.downtime.edit', [
    'asset_id'      => $id,
    'asset_note'    => $note,
    'wos'	        => $wos,
    'users'			=> $users,
    'data'          => $datas
]);
}

    // Menyimpan hasil edit | POST
public function commit_edit(Request $request, $id) {
    $now = new DateTime();
    $downtime_id = $request->id;

    DB::table('asset_downtime')
    ->where('id', $downtime_id)
    ->update([
        'start_time'        => $request->st_date.' '.$request->st_time,
        'end_time' 			=> $request->et_date.' '.$request->et_time,
        'hours'       		=> $request->hours,
        'downtime_type_id'	=> $request->downtime,
        'downtime_cause_id'	=> $request->dcause,
        'wo_id'         	=> $request->wo,
        'reported_by_id'    => $request->user,
        'reported_time'		=> $request->ra_date.' '.$request->ra_time,
        'note'				=> $request->note,
    ]);
    
    return redirect('asset/'.$id.'/downtime');
}
}
