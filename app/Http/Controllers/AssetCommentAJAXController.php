<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

use DateTime;

class AssetCommentAJAXController extends Controller
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

    
    public function load() {
        $asset_id = request('asset_id');
        $datas = [];

        $datas = DB::table('asset_comment')
            ->select('id', 'comment', 'modified_time')
            ->where('asset_id', '=', $asset_id)
            ->get();

        return response([
            'status' => 'ok',
            'datas'  => $datas
        ], 200);
    }

    public function create() {
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

    public function del() {
        $asset_comment_id = request('asset_comment_id');

        DB::table('asset_comment')
            ->where('id', '=', $asset_comment_id)
            ->delete();
        
        return response(['status' => 'ok'], 200);
    }

    public function show_edit() {
        $asset_ment_id = request('asset_comment_id');

        $datas = DB::table('asset_comment')
            ->select('id', 'comment')
            ->where('id', '=', $asset_comment_id)
            ->get();

        if($datas->count() < 1) {
            return response(['message' => 'id was not found'], 200);
        }

        return response([
            'status' => 'ok',
            'datas'  => $datas[0]
        ], 200);
    }

    public function commit_edit() {
        $now = new DateTime();
        $asset_comment_id = request('asset_comment_id');
        
        DB::table('asset_comment')
            ->where('id', $asset_comment_id)
            ->update([
                'comment'       => request('comment_data'),
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);

        return response(['status' => 'ok'], 200);
    }
}
