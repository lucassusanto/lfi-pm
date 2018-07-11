<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetTypeController extends Controller
{
    private $tableName = 'asset_type';
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table($this->tableName)
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // PUBLIC
    public function index() {
        $datas = DB::table($this->tableName)
            ->select('id', 'type', 'note')
            ->get();

        return view('asset.type.master', [
            'datas' => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data() {
        return view('asset.type.new');
    }

    // Menambah data baru | POST
    public function commit_new_data(Request $request) {
        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table($this->tableName)->insert([
            'id'                => $last_id,
            'type'              => $request->type,
            'note'              => $request->note,
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return redirect('asset/type');
    }

    // Menghapus data | POST
    public function commit_delete(Request $request) {
        $id = $request->id;

        DB::table($this->tableName)
            ->where('id', '=', $id)
            ->delete();

        return redirect('asset/type');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request) {
        $id = $request->id;

        $datas = DB::table($this->tableName)
            ->select('id', 'type', 'note')
            ->where('id', '=', $id)
            ->get();

        if($datas->count() < 1)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Asset data id was not found!',
                'link'  => 'asset/type'
            ]);
        
        return view('asset.type.edit', [
            'data' => $datas[0]
        ]);
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request) {
        $now = new DateTime();
        $id = $request->id;
        
        DB::table($this->tableName)
            ->where('id', $id)
            ->update([
                'type'          => $request->type,
                'note'          => $request->note,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);
        
        return redirect('asset/type');
    }
}
