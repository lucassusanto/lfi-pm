<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetCommentController extends Controller
{
    // GET
    public function index() {
        $datas = "";

        return view('asset.comment.master', ['datas' => $datas]);
    }

    public function new() {
        return view('asset.comment.new');
    }
    
    public function edit() {
        return view('asset.comment.edit');
    }

    // POST
    public function new_data(Request $request) {

    }

    public function delete(Request $request) {

    }
}
