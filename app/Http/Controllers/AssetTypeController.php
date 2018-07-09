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
        
        $type = $request->type;
        $note = $request->note;
        
        /* Getting new data ID */
        $last_id = DB::table($this->tableName)
            ->select('id')
            ->orderBy('id', 'desc')
            ->take(1)
            ->get();

        if($last_id->count()) {
            $last_id = $last_id[0]->id + 1;
        } else {
            $last_id = 1;
        }
        /* ------------------- */
        
        DB::table($this->tableName)->insert([
            'id'                => $last_id,
            'type'              => $type,
            'note'              => $note,
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

        $affected = DB::table($this->tableName)
            ->where('id', '=', $id)
            ->delete();

        return redirect('asset/type', [
            'affected' => $affected
        ]);
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request) {
        $id = $request->id;

        $datas = DB::table($this->tableName)
            ->select('id', 'type', 'note')
            ->where('id', '=', $id)
            ->get();

        if($datas->count()) {
            return view('asset.type.edit', [
                'data' => $datas[0]
            ]);
        } else {
            // Jika $id tidak ditemukan
            return redirect('asset/type');
        }
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request) {
        $now = new DateTime();
        
        $id = $request->id;
        $type = $request->type;
        $note = $request->note;
        
        $affected = DB::table($this->tableName)
            ->where('id', $id)
            ->update ([
                'type'          => $type,
                'note'          => $note,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);

        return redirect('asset/type', [
            'affected' => $affected
        ]);
    }
}
