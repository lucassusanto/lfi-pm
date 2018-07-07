<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetTypeController extends Controller
{
    // GET
    public function index() {
        $datas = DB::table('asset_type')->select('type', 'note')->get();

        return view('asset.type.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.type.new');
    }

    public function edit() {
        return view('asset.type.edit');
    }

    // POST
    public function new_data(Request $request) {
        // TODO: success/failure flag to UI
        $now = new DateTime();

        $type = $request->type;
        $note = $request->note;

        $admin_id = '1000000';      // Sekarang masih pakai ID default user Admin
        
        DB::table('asset_type')->insert(
            ['id' => '12', 'type' => $type, 'note' => $note, 'modified_time' => $now, 'modified_id' => $admin_id, 'created_time' => $now, 'created_id' => $admin_id]
        );

        return $this->index();
    }

    public function delete(Request $request) {
        // TODO: success/failure flag to UI
        
        // DEBUGGING
        // $id = $request->id;
        $id = 12;

        DB::table('asset_type')->where('id', '=', $id) ->delete();

        return $this->index();
    }
}
