<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

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
        $asset_id = Input::get('asset_id');
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

    public function create(Request $request) {
        /*
        if(Session::token() !== Input::get('_token')) {
            return response(['status' => 'Error'], 400);
        }
        */
        
        $asset_id = Input::get('asset_id');
        $comment = Input::get('comment');

        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table('asset_comment')->insert([
            'id'                => $last_id,
            'asset_id'          => $asset_id,
            'comment'           => $request->comment,
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return response(['status' => 'OK'], 200);
    }

    public function del() {
        $comment_id = Input::get('comment_id');

        DB::table('asset_comment')
            ->where('id', '=', $comment_id)
            ->delete();
        
        return response(['status' => 'OK'], 200);
    }

    public function show_edit() {
        $comment_id = Input::get('comment_id');

        $datas = DB::table('asset_comment')
            ->select('id', 'comment')
            ->where('id', '=', $comment_id)
            ->get();

        return response([
                'status' => 'OK',
                'datas'  => $datas[0]
            ], 200);
    }

    public function commit_edit() {
        $now = new DateTime();

        $comment_id = Input::get('comment_id');
        $comment_data = Input::get('comment_data');
        
        DB::table('asset_comment')
            ->where('id', $comment_id)
            ->update([
                'comment'       => $comment_data,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);

        return response(['status' => 'OK'], 200);
    }
}
