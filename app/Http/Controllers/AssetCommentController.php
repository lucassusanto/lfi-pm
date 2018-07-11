<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetCommentController extends Controller
{
    private $tableName = 'asset_comment';
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

    // Get asset note
    private function getAssetNote($asset_id) {
        $asset_data = DB::table('asset')->select('note')
            ->where('id', '=', $asset_id)
            ->get();

        if($asset_data->count() < 1)
            return false;

        return $asset_data[0]->note;  
    }

    // PUBLIC
    public function index($id) {
        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg' => 'Asset data '.$id.' was not found!',
                'link' => 'asset'
            ]);

        $datas = DB::table($this->tableName)
            ->select('id', 'comment', 'modified_time')
            ->where('asset_id', '=', $id)
            ->get();

        return view('asset.comment.master', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'datas'         => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data($id) {
        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Asset data '.$id.' was not found!',
                'link'  => 'asset'
            ]);

        return view('asset.comment.new', [
            'asset_id'      => $id,
            'asset_note'    => $note
        ]);
    }

    // Menambah data baru | POST
    public function commit_new_data(Request $request, $id) {
        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table($this->tableName)->insert([
            'id'                => $last_id,
            'asset_id'          => $id,
            'comment'           => $request->comment,
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return redirect('asset/'.$id.'/comment');
    }

    // Menghapus data | POST
    public function commit_delete(Request $request, $id) {
        $comment_id = $request->id;

        DB::table($this->tableName)
            ->where('id', '=', $comment_id)
            ->delete();

        return redirect('asset/'.$id.'/comment');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request, $id) {
        $comment_id = $request->id;

        $datas = DB::table($this->tableName)
            ->select('id', 'comment')
            ->where('id', '=', $comment_id)
            ->get();

        if($datas->count() < 1)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Comment data was not found!',
                'link'  => 'asset/comment'.$id
            ]);

        $note = $this->getAssetNote($id);

        if($note == false)
            return view('asset.info', [
                'title' => 'Error!',
                'msg'   => 'Asset data '.$id.' was not found!',
                'link'  => 'asset'
            ]);
        
        return view('asset.comment.edit', [
            'asset_id'      => $id,
            'asset_note'    => $note,
            'data'          => $datas[0]
        ]);
    }

    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request, $id) {
        $now = new DateTime();
        $comment_id = $request->id;
        
        DB::table($this->tableName)
            ->where('id', $comment_id)
            ->update([
                'comment'       => $request->comment,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);
        
        return redirect('asset/'.$id.'/comment');
    }
}
