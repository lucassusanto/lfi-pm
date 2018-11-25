<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetTypeController extends Controller
{
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    // Get last data ID
    private function getId() {
        $last_id = DB::table('asset_type')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;
        
        return $last_id;
    }

    // PUBLIC
    public function index() {
        $datas = DB::table('asset_type')
            ->select('id', 'type', 'note')
            // ->limit(50)
            ->get();

        return view('asset.type.master', compact('datas'));
    }

    // Menampilkan form data baru | GET
    public function new() {
        return view('asset.type.new');
    }

    // Menambah data baru | POST
    public function store(Request $request) {
        $this->validate(request(), [
            'type' => 'required',
            'note' => 'required'
        ]);

        $now = new DateTime();
        $last_id = $this->getId();
        
        DB::table('asset_type')->insert([
            'id'                => $last_id,
            'type'              => request('type'),
            'note'              => request('note'),
            'modified_time'     => $now,
            'modified_id'       => $this->user_id,
            'created_time'      => $now,
            'created_id'        => $this->user_id
        ]);
        
        return redirect('asset/type')->with([
            'successes' => ['Asset type \''.request('type').'\' was added.']
        ]);
    }

    // Menghapus data | POST
    public function del(Request $request) {
        $this->validate(request(), [
            'id'    => 'required',
            'type'  => 'required'
        ]);

        $asset_type_id = request('id');

        try {
            DB::table('asset_type')
                ->where('id', '=', $asset_type_id)
                ->delete();

            return redirect('asset/type')->with([
                'successes' => ['Asset type \''.request('type').'\' was deleted.']
            ]);
        }
        catch(\Exception $e) {
            return redirect('asset/type')->withErrors([
                'Asset type \''.request('type').'\' is stil being referenced by some assets.'
            ]);
        }
    }

    // Menampilkan detil data edit | POST
    public function details(Request $request) {
        $this->validate(request(), [
            'id'   => 'required',
            'type' => 'required'
        ]);

        $asset_type_id  = request('id');
        $asset_type     = request('type');

        $data = DB::table('asset_type')
            ->select('id', 'type', 'note')
            ->where('id', '=', $asset_type_id)
            ->get();

        if($data->count() == 0) {
            return view('status.index')
                ->with(['link' => 'asset/type'])
                ->withErrors([
                    'Asset type \''.$asset_type.'\' was not found!'
                ]);
        }

        $data = $data[0];

        return view('asset.type.edit', compact('data'));
    }

    // Menyimpan hasil edit | POST
    public function update(Request $request) {
        $this->validate(request(), [
            'id'    => 'required',
            'type'  => 'required',
            'note'  => 'required'
        ]);

        $now = new DateTime();
        $asset_type_id = request('id');
        
        DB::table('asset_type')
            ->where('id', $asset_type_id)
            ->update([
                'note'          => request('note'),
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);
        
        return redirect('asset/type')->with([
            'successes' => ['Asset type \''.request('type').'\' was updated.']
        ]);
    }

    // Mengecek apakah Asset Type sudah ada/belum | GET
    public function cekType() {        
        $asset_type = request('type');

        if(empty($asset_type)) {
            return response('', 200);
        }

        $asset_data = DB::table('asset_type')
            ->select('id')
            ->where('type', '=', $asset_type)
            ->limit(1)
            ->get();

        if($asset_data->count()) {
            return response('false', 200);  // Sudah ada
        }

        return response('true', 200);
    }
}
