<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetTypeController extends Controller
{
    public function index() {
        $datas = DB::table('asset_type')
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
        $user_id = '1000000';      // Sekarang masih pakai ID default user Admin
        
        $type = $request->type;
        $note = $request->note;
        
        $last_id = DB::table('asset_type')
            ->select('id')
            ->orderBy('id', 'desc')
            ->take(1)
            ->get();

        $last_id = $last_id[0]->id + 1;
        
        DB::table('asset_type')->insert([
            'id'                => $last_id,
            'type'              => $type,
            'note'              => $note,
            'modified_time'     => $now,
            'modified_id'       => $user_id,
            'created_time'      => $now,
            'created_id'        => $user_id
        ]);
        
        return redirect('asset/type');
    }

    // Menghapus data | POST
    public function commit_delete(Request $request) {
        $id = $request->id;

        DB::table('asset_type')
            ->where('id', '=', $id)
            ->delete();

        return redirect('asset/type');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request) {
        $id = $request->id;

        $datas = DB::table('asset_type')
            ->select('id', 'type', 'note')
            ->where('id', '=', $id)
            ->get();

        return view('asset.type.edit', [
            'data' => $datas[0]
        ]);
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request) {
        $now = new DateTime();
        $user_id = '1000000';      // Sekarang masih pakai ID default user Admin
        
        $id = $request->id;
        $type = $request->type;
        $note = $request->note;
        
        DB::table('asset_type')
            ->where('id', $id)
            ->update ([
                'type'          => $type,
                'note'          => $note,
                'modified_time' => $now,
                'modified_id'   => $user_id
            ]);

        return redirect('asset/type');
    }
}
