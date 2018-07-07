<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetTypeController extends Controller
{
    // Master Data
    public function index() {
        $datas = DB::table('asset_type')
            ->select('id', 'type', 'note')
            ->get();

        return view('asset.type.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.type.new');
    }

    public function new_data(Request $request) {
        // TODO: success/failure flag to UI
        $now = new DateTime();
        $user_id = '1000000';      // Sekarang masih pakai ID default user Admin
        
        $type = $request->type;
        $note = $request->note;
        
        $data_id = DB::table('asset_type')->insertGetId(
            ['type' => $type,
             'note' => $note,
             'modified_time' => $now,
             'modified_id' => $user_id,
             'created_time' => $now,
             'created_id' => $user_id
        ]);
        
        return $data_id;
        // return redirect('asset/type');
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('asset_type')
            ->where('id', '=', $id)
            ->delete();

        return redirect('asset/type');
    }

    
    // Editing Data
    public function edit(Request $request) {
        $id = $request->id;

        $datas = DB::table('asset_type')
            ->select('id', 'type', 'note')
            ->where('id', '=', $id)
            ->get();

        return view('asset.type.edit', ['datas' => $datas]);
    }
   
    public function commit_edit(Request $request) {
        $now = new DateTime();
        $user_id = '1000000';      // Sekarang masih pakai ID default user Admin
        
        $id = $request->id;
        $type = $request->type;
        $note = $request->note;
        
        DB::table('asset_type')
            ->where('id', $id)
            ->update ([ 'type' => $type,
                        'note' => $note,
                        'modified_time' => $now,
                        'modified_id' => $user_id
            ]);

        return redirect('asset/type');
    }
}
