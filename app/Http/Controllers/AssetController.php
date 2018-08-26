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

    // Get last data ID
    private function getID() {
        $last_id = DB::table('asset')
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count())   $last_id = $last_id[0]->id + 1;
        else                    $last_id = 1;

        return $last_id;
    }

    // Show Error Info
    private function show_error($msg) {
        return view('asset.info', [
            'title' => 'Error!',
            'msg'   => $msg,
            'link'  => 'asset'
        ]);
    }

    // Query utk data dropdowns di form new/edit data
    private function getOptions() {
        // Cek asset_type. Required as foreign key
        $categories = DB::table('asset_type')
            ->select('id', 'note')
            ->get();
        
        if($categories->count() == 0) {
            $status = $this->show_error('asset_type table seems empty. Please add at least 1 data');
            return compact('status');
        }

        // Asset Locations
        $loc_id = DB::table('asset_type')
            ->select('id')
            ->where(DB::raw('upper(note)'), 'like', '%LOCATION%')
            ->take(1)->get();

        $locations = [];
        
        if($loc_id->count()) {
            $locations = DB::table('asset')
                ->select('id', 'note')
                ->where('type_id', '=', $loc_id[0]->id)
                ->get();
        }

        // Other Datas
        $weight_uom = DB::table('uom')
            ->select('id', 'uom')
            ->get();
        
        $vendors = DB::table('vendor')
            ->select('id', 'vendor')
            ->get();

        $manufacturers = DB::table('manufacturer')
            ->select('id', 'manufacturer')
            ->get();

        $costcodes = DB::table('costcode')
            ->select('id', 'note')
            ->get();
        
        $depts = DB::table('dept')
            ->select('id', 'dept')
            ->get();

        $items = DB::table('inventory')
            ->select('id', 'in_no')
            ->get();

        $status = 'ok';

        return compact('status', 'categories', 'locations', 'weight_uom', 'vendors', 'manufacturers', 'costcodes', 'depts', 'items');
    }

    // PUBLIC
    public function index() {
        $datas = DB::table('asset')
            ->select('asset.id', 'asset.asset_no', 'asset.status_id', 'asset_type.note as category', 'asset.note')
            ->leftjoin('asset_type', 'asset.type_id', '=', 'asset_type.id')
            // ->limit(50)
            ->get();

        return view('asset.master', [
            'datas' => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new() {
        $data = $this->getOptions();
        if($data['status'] != 'ok') return $data['status'];
        
        return view('asset.new', [
            'categories'        => $data['categories'],
            'locations'         => $data['locations'],
            'wuoms'             => $data['weight_uom'],
            'vendors'           => $data['vendors'],
            'manufacturers'     => $data['manufacturers'],
            'costcodes'         => $data['costcodes'],
            'depts'             => $data['depts'],
            'items'             => $data['items']
        ]);
    }

    // Menambah data asset baru | POST
    public function store(Request $request) {
        $this->validate(request(), [
            'id'        => 'required',
            'status'    => 'required',
            'category'  => 'required',
            'note'      => 'required',
            'priority'  => 'required'
        ]);

        $now = new DateTime();
        $last_id = $this->getID();

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

    // Menghapus asset | POST
    public function del(Request $request) {
        $this->validate(request(), [
            'id' => 'required'
        ]);

        $asset_id = $request->id;

        DB::table('asset')
            ->where('id', '=', $asset_id)
            ->delete();

        return redirect('asset');
    }

    // Menampilkan detil data edit | POST
    public function edit(Request $request) {
        $this->validate(request(), [
            'id' => 'required'
        ]);

        $asset_id = $request->id;

        $asset_data = DB::table('asset')
            ->where('id', '=', $asset_id)
            ->get();

        if($asset_data->count() == 0) {
            return $this->show_error('Asset data was not found!');
        }

        $data = $this->getOptions();
        if($data['status'] != 'ok') return $data['status'];

        return view('asset.edit', [
            'asset_id'          => $asset_id,
            'asset_data'        => $asset_data[0],

            'categories'        => $data['categories'],
            'locations'         => $data['locations'],
            'wuoms'             => $data['weight_uom'],
            'vendors'           => $data['vendors'],
            'manufacturers'     => $data['manufacturers'],
            'costcodes'         => $data['costcodes'],
            'depts'             => $data['depts'],
            'items'             => $data['items']
        ]);
    }

    // Menyimpan hasil edit | POST
    public function update(Request $request) {
        $this->validate(request(), [
            'id'        => 'required',
            'status'    => 'required',
            'category'  => 'required',
            'note'      => 'required',
            'priority'  => 'required'
        ]);

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


    // Menampilkan rangkuman data asset | GET
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

        if($asset_data->count() == 0) {
            return $this->show_error('Asset data id was not found!');
        }

        return view('asset.view2', [
            'asset_id'      => $asset_id,
            'asset_data'    => $asset_data[0]
        ]); 
    }

    // Menampilkan detail asset | GET
    public function details(Request $request) {
        $asset_id = $request->id;
        
        $asset_data = DB::table('asset')
            ->select(
                // OVERVIEW
                'asset.asset_no', 'asset.priority_id', 'asset.status_id', 'asset.weight',
                // Category
                DB::raw('asset_type.note as category'),
                // Wuom
                DB::raw('uom.uom as wuom'),
                // Location
                DB::raw('asset_loc.note as location'),
                //
                'asset.serial_no', 'asset.note',

                // WARRANTY
                'asset.start_date', 'asset.purchase_date', 'asset.warranty_start_date', 'asset.warranty_end_date',
                // Vendor
                'vendor.vendor',
                // Manufacturer
                'manufacturer.manufacturer',
                //
                'asset.original_cost',

                // COST
                'asset.maint_material_cost', 'asset.maint_labor_cost', 'asset.maint_labor_hours', 'asset.maint_cost',

                // CODES
                // Costcode
                DB::raw('costcode.note as costcode'),
                // Department
                'dept.dept',
                // Item
                DB::raw('inventory.in_no as item'),

                // DEPRECIATION
                'asset.depreciation_type_id', 'asset.depreciation_start', 'asset.depreciation_time_id', 'asset.depreciation_rate'
                )
            // Category
            ->join('asset_type', 'asset_type.id', '=', 'asset.type_id')
            // Weight uom
            ->leftjoin('uom', 'uom.id', '=', 'asset.weight_uom_id')
            // Location
            ->leftjoin(DB::raw('asset as asset_loc'), 'asset_loc.id', '=', 'asset.location_id')
            // Vendor
            ->leftjoin('vendor', 'vendor.id', '=', 'asset.vendor_id')
            // Manufacturer
            ->leftjoin('manufacturer', 'manufacturer.id', '=', 'asset.manufacturer_id')
            // Costcode
            ->leftjoin('costcode', 'costcode.id', '=', 'asset.costcode_id')
            // Department
            ->leftjoin('dept', 'dept.id', '=', 'asset.dept_id')
            // Item
            ->leftjoin('inventory', 'inventory.id', '=', 'asset.in_id')

            ->where('asset.id', '=', $asset_id)
            ->get();

        if($asset_data->count() == 0) {
            return $this->show_error('Asset data id was not found!');
        }

        return view('asset.details', [
            'asset_id'      => $asset_id,
            'asset_data'    => $asset_data[0]
        ]);
    }


    // Mengecek apakah Asset No sudah ada/belum | POST
    public function cekNo() {
        $asset_no = request('no');

        if(empty($asset_no)) {
            return response('', 200);
        }

        $asset_data = DB::table('asset')
            ->where('asset_no', '=', $asset_no)
            ->limit(1)
            ->get();

        if($asset_data->count()) {
            return response('false', 200); // Sudah ada
        }

        return response('true', 200);
    }
}