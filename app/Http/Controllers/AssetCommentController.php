<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;
use Illuminate\Support\Facades\Redirect;

class AssetCommentController extends Controller
{
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset_comment')
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

    private function show_error($msg) {
        return view('asset.info', [
            'title' => 'Error!',
            'msg'   => $msg,
            'link'  => 'asset'
        ]);
    }

    // PUBLIC
    public function index($id) {
        $note = $this->getNote($id);

        if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        $datas = DB::table('asset_comment')
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
        $note = $this->getNote($id);

        if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        return view('asset.comment.new', [
            'asset_id'      => $id,
            'asset_note'    => $note
        ]);
    }

    // DEBUG
    // Menambah data baru | POST
    public function commit_new_data(Request $request, $id) {
        $now = new DateTime();
        $last_id = $this->getID();
        
        DB::table('asset_comment')->insert([
            'id'                => $last_id,
            'asset_id'          => $id,
            'comment'           => $request->comment,
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        // return redirect('asset/'.$id.'/comment');    // ORIGINAL
        return redirect('asset/'.$id);
    }

    // DEBUG
    // Menghapus data | POST
    public function commit_delete(Request $request, $id) {
        $comment_id = $request->id;

        DB::table('asset_comment')
            ->where('id', '=', $comment_id)
            ->delete();

        // return redirect('asset/'.$id.'/comment');    // ORIGINAL
        return redirect('asset/'.$id);
    }

    // DEBUG
    // Menampilkan detil data edit | POST
    public function show_edit(Request $request, $id) {
        $note = $this->getNote($id);

        if($note == false)
            return $this->show_error('Asset data '.$id.' was not found!');

        $comment_id = $request->id;

        $datas = DB::table('asset_comment')
            ->select('id', 'comment')
            ->where('id', '=', $comment_id)
            ->get();

        if($datas->count() < 1)
            return $this->show_error('Comment data was not found!');

        return view('asset.comment.edit', [     // ORIGINAL
            'asset_id'      => $id,
            'asset_note'    => $note,
            'data'          => $datas[0]
        ]);
    }

    // DEBUG
    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request, $id) {
        $now = new DateTime();
        $comment_id = $request->id;
        
        DB::table('asset_comment')
            ->where('id', $comment_id)
            ->update([
                'comment'       => $request->comment,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);
        
        // return redirect('asset/'.$id.'/comment');    // ORIGINAL
        return redirect('asset/'.$id);
    }
}