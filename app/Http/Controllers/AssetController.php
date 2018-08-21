<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;
use Redirect;

class AssetController extends Controller
{
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin
    private $categories, $locations, $weight_uom, $vendors, $manufacturers, $costcodes, $depts, $items;

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset')
        ->select('id')->orderBy('id', 'desc')
        ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;

        return $last_id;
    }

    private function show_error($msg) {
        return view('asset.info', [
            'title' => 'Error!',
            'msg'   => $msg,
            'link'  => 'asset'
        ]);
    }
    
    // Query utk data dropdowns di form new/edit data
    private function listQueries() {
        // Cek asset_type. Required as foreign key
        $categories = DB::table('asset_type')
        ->select('id', 'note')
        ->get();
        
        if($categories->count() < 1)
            return $this->show_error('asset_type table seems empty. Please add at least 1 data');

        $this->categories = $categories;

        // Mendapat list asset location dari tabel asset_type
        $loc_id = DB::table('asset_type')
        ->select('id')
        ->where(DB::raw('upper(note)'), 'like', '%LOCATION%')
        ->take(1)->get();

        $this->locations = [];
        
        if($loc_id->count())
            $this->locations = DB::table('asset')
        ->select('id', 'note')
        ->where('type_id', '=', $loc_id[0]->id)
        ->get();

        // Get others data
        $this->weight_uom = DB::table('uom')
        ->select('id', 'uom')
        ->get();
        
        $this->vendors = DB::table('vendor')
        ->select('id', 'vendor')
        ->get();

        $this->manufacturers = DB::table('manufacturer')
        ->select('id', 'manufacturer')
        ->get();

        $this->costcodes = DB::table('costcode')
        ->select('id', 'note')
        ->get();
        
        $this->depts = DB::table('dept')
        ->select('id', 'dept')
        ->get();

        $this->items = DB::table('inventory')
        ->select('id', 'in_no')
        ->get();
    }

    // PUBLIC
    public function index() {
        $datas = DB::table('asset')
        ->select('asset.id', 'asset.asset_no', 'asset.status_id', 'asset_type.note as category', 'asset.note')
        ->leftjoin('asset_type', 'asset.type_id', '=', 'asset_type.id')
        ->get();

        return view('asset.master', [
            'datas' => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new() {
        $out = $this->listQueries();
        if(!empty($out)) return $out;
        
        return view('asset.new', [
            'categories'        => $this->categories,
            'locations'         => $this->locations,
            'wuoms'             => $this->weight_uom,
            'vendors'           => $this->vendors,
            'manufacturers'     => $this->manufacturers,
            'costcodes'         => $this->costcodes,
            'depts'             => $this->depts,
            'items'             => $this->items
        ]);
    }

    // Menambah data baru | POST
    public function store(Request $request) {
        $now = new DateTime();
        $last_id = $this->getID();

        $cek = DB::table('asset')->where('asset_no', '=', $request->no)->limit(1)->get();
        if($cek->count()) return Redirect::back()->with('asset_no_err', 'true');

        DB::table('asset')->insert([
            'id'                => $last_id,
            'asset_no'          => $request->no,
            'note'              => $request->note,
            'priority_id'       => $request->priority,
            'status_id'         => $request->status,
            'type_id'           => $request->category,
            // 'category_id'    // Berhubungan dgn type_id 
            // 'parent_id'
            // 'template_id'
            'location_id'       => $request->location,
            'weight'            => $request->weight,
            'weight_uom_id'     => $request->wuom,
            'serial_no'         => $request->sn,
            'owner_user_id'     => $this->user_id,
            'start_date'        => $request->sd,
            'purchase_date'     => $request->pd,
            'original_cost'     => $request->ori_cost,
            'manufacturer_id'   => $request->manufacturer,
            'vendor_id'         => $request->vendor,
            // 'upload_id'
            'warranty_start_date'       => $request->ws,
            'warranty_end_date'         => $request->we,
            'maint_labor_hours'         => $request->mlh,
            'maint_labor_cost'          => $request->mlc,
            'maint_material_cost'       => $request->mmc,
            'maint_cost'                => $request->mc,
            // 'rollup_cost'
            'costcode_id'               => $request->cc,
            'dept_id'                   => $request->dept,
            'in_id'                     => $request->ai,
            'depreciation_type_id'      => $request->dt,
            'depreciation_start'        => $request->ds,
            'depreciation_time_id'      => $request->di, // Depreciation interval
            'depreciation_rate'         => $request->dr,
            // 'description'
            'modified_time'             => $now,
            'modified_id'               => $this->user_id,
            'created_time'              => $now,
            'created_id'                => $this->user_id
        ]);
        
        return redirect('asset');
    }

    // Menghapus data | POST
    public function del(Request $request) {
        $asset_id = $request->id;

        DB::table('asset')
            ->where('id', '=', $asset_id)
            ->delete();

        return redirect('asset');
    }

    // Menampilkan detil data edit | POST
    public function edit(Request $request) {
        $asset_id = $request->id;

        $asset_data = DB::table('asset')
            ->where('id', '=', $asset_id)
            ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data was not found!');

        $out = $this->listQueries();
        if(!empty($out)) return $out;

        return view('asset.edit', [
            'asset_id'          => $asset_id,
            'asset_data'        => $asset_data[0],
            'categories'        => $this->categories,
            'locations'         => $this->locations,
            'wuoms'             => $this->weight_uom,
            'vendors'           => $this->vendors,
            'manufacturers'     => $this->manufacturers,
            'costcodes'         => $this->costcodes,
            'depts'             => $this->depts,
            'items'             => $this->items
        ]);
    }

    // Menyimpan hasil edit | POST
    public function update(Request $request) {
        $now = new DateTime();
        $asset_id = $request->id;

        DB::table('asset')
        ->where('id', $asset_id)
        ->update([
            'note'              => $request->note,
            'priority_id'       => $request->priority,
            'status_id'         => $request->status,
            'type_id'           => $request->category,
            'location_id'       => $request->location,
            'weight'            => $request->weight,
            'weight_uom_id'     => $request->wuom,
            'serial_no'         => $request->sn,
            'owner_user_id'     => $this->user_id,
            'start_date'        => $request->sd,
            'purchase_date'     => $request->pd,
            'original_cost'     => $request->ori_cost,
            'manufacturer_id'   => $request->manufacturer,
            'vendor_id'         => $request->vendor,
            'warranty_start_date'       => $request->ws,
            'warranty_end_date'         => $request->we,
            'maint_labor_hours'         => $request->mlh,
            'maint_labor_cost'          => $request->mlc,
            'maint_material_cost'       => $request->mmc,
            'maint_cost'                => $request->mc,
            'costcode_id'               => $request->cc,
            'dept_id'                   => $request->dept,
            'in_id'                     => $request->ai,
            'depreciation_type_id'      => $request->dt,
            'depreciation_start'        => $request->ds,
            'depreciation_time_id'      => $request->di, // Depreciation interval
            'depreciation_rate'         => $request->dr,
            'modified_time'             => $now,
            'modified_id'               => $this->user_id
        ]);
        
        return redirect('asset');
    }

    private function getContract($id) {
        $contracts = DB::table('contract')
            ->select('id', 'contract')
            ->get();

        if($contracts->count() < 1) return false;

        return $contracts;
    }


    // Required as foreign key (Work order)
    private function getWO() {
        $wos = DB::table('workorder')
            ->select('id', 'note')
            ->get();

        if($wos->count() < 1) return false;
        
        return $wos;
    }
    
    // Required as foreign key (reported_by_id)
    private function getUsers() {
        $users = DB::table('users')
            ->select('id', 'full_name')
            ->get();

        if($users->count() < 1) return false;
        
        return $users;
    }

    // Asset Overviews (AJAX)
    public function view() {
        $asset_id = request('id');
        
        $asset_data = DB::table('asset')
            ->select('asset.asset_no', 'asset.priority_id', 'asset.status_id',
                DB::raw('asset_type.note as category'),
                DB::raw('asset_loc.note as location'),
                'asset.serial_no', 'asset.note')
            // Categories
            ->join('asset_type', 'asset_type.id', '=', 'asset.type_id')
            // Locations
            ->leftjoin(DB::raw('asset as asset_loc'), 'asset_loc.id', '=', 'asset.location_id')

            ->where('asset.id', '=', $asset_id)
            ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data id was not found!');

        return view('asset.view2', [
            'asset_id'      => $asset_id,
            'asset_data'    => $asset_data[0]
        ]); 
    }

    public function details(Request $request) {
        $asset_id = $request->id;
        
        $asset_data = DB::table('asset')
            ->where('id', '=', $asset_id)
            ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data id was not found!');

        
        $out = $this->listQueries();
        if(!empty($out)) return $out;

        return view('asset.details', [
            'asset_id'          => $asset_id,
            'asset_data'        => $asset_data[0],
            'categories'        => $this->categories,
            'locations'         => $this->locations,
            'wuoms'             => $this->weight_uom,
            'vendors'           => $this->vendors,
            'manufacturers'     => $this->manufacturers,
            'costcodes'         => $this->costcodes,
            'depts'             => $this->depts,
            'items'             => $this->items
        ]);
    }
}