<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AssetCommentController extends Controller
{
    public function new() {
        return view('asset.comment.new');
    }
}
