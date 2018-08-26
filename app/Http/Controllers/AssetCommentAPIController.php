<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetCommentAPIController extends Controller
{
    private $user_id = '1000000'; // Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_comment')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // PUBLIC
    // Mengambil data master | GET
    public function master() {
        $this->validate(request(), [
            'asset_id' => 'required'
        ]);

        $asset_id = request('asset_id');

        $datas = DB::table('asset_comment')
            ->select('id', 'comment', 'modified_time')
            ->where('asset_id', '=', $asset_id)
            // ->limit(50)
            ->get();

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    // Menambah data baru | POST
    public function store() {
        $this->validate(request(), [
            'asset_id' => 'required',
            'comment'   => 'required'
        ]);

        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table('asset_comment')->insert([
            'id'                => $last_id,
            'asset_id'          => request('asset_id'),
            'comment'           => request('comment'),
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
            'asset_comment_id' => 'required'
        ]);

        $asset_comment_id = request('asset_comment_id');

        DB::table('asset_comment')
            ->where('id', '=', $asset_comment_id)
            ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    // Melihat detail data | POST
    public function detail() {
        $this->validate(request(), [
            'asset_comment_id' => 'required'
        ]);

        $asset_comment_id = request('asset_comment_id');

        $datas = DB::table('asset_comment')
            ->select('id', 'comment')
            ->where('id', '=', $asset_comment_id)
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
            'asset_comment_id' => 'required',
            'comment'     => 'required'
        ]);

        $now = new DateTime();
        $asset_comment_id = request('asset_comment_id');
        
        DB::table('asset_comment')
            ->where('id', $asset_comment_id)
            ->update([
                'comment'       => request('comment'),
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);

        return response(['status' => 'ok'], 200);
    }
}
