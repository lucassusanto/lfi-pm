<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use DateTime;

class AssetController extends Controller
{
    private $tableName = 'asset';
    private $user_id = '1000000';   // Sekarang masih pakai ID default user Admin

    private function getLocations() {
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

        return $locations;
    }

    private function listQueries() {
        $weight_uom = DB::table('uom')
            ->select('id', 'uom')
            ->get();

        $locations = $this->getLocations();
        
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
    }

    // PUBLIC
    public function index() {
        $datas = DB::table($this->tableName)
            ->join('asset_type', 'asset.type_id', '=', 'asset_type.id')
            ->select('asset.id', 'asset.asset_no', 'asset.status_id', 'asset_type.note as asset_type_note', 'asset.note')
            ->get();

        return view('asset.master', [
            'datas' => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data() {
        $categories = DB::table('asset_type')
            ->select('id', 'note')
            ->get();
        
        // Error! No data in asset_type. Required as foreign key
        if($categories->count() < 1) {
            return view('asset.info', [
                'title' => 'Error!',
                'msg' => 'asset_type table seems empty. Please add at least 1 data'
            ]);
        }

        $weight_uom = DB::table('uom')
            ->select('id', 'uom')
            ->get();

        $locations = $this->getLocations();
        
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

        return view('asset.new', [
            'categories'        => $categories,
            'wuoms'             => $weight_uom,
            'locations'         => $locations,
            'vendors'           => $vendors,
            'manufacturers'     => $manufacturers,
            'costcodes'         => $costcodes,
            'depts'             => $depts,
            'items'             => $items
        ]);
    }

    // Menambah data baru | POST
    public function commit_new_data(Request $request) {
        $now = new DateTime();
        
        // Get ID
        $last_id = DB::table($this->tableName)
            ->select('id')->orderBy('id', 'desc')
            ->take(1)->get();

        if($last_id->count()) {
            $last_id = $last_id[0]->id + 1;
        } else {
            $last_id = 1;
        }

        DB::table($this->tableName)->insert([
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
    public function commit_delete(Request $request) {
        $id = $request->id;

        $affected = DB::table($this->tableName)
            ->where('id', '=', $id)
            ->delete();

        return redirect('asset');
    }

    // DEBUGGING
    // Menampilkan detil data edit | POST
    public function show_edit(Request $request) {
        $categories = DB::table('asset_type')
            ->select('id', 'note')
            ->get();
        
        if($categories->count() < 1) {
            return view('asset.info', [
                'title' => 'Error!',
                'msg' => 'asset_type table seems empty. Please add at least 1 data'
            ]);
        }

        $weight_uom = DB::table('uom')
            ->select('id', 'uom')
            ->get();

        $locations = $this->getLocations();
        
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
        // -----

        $id = $request->id;

        $asset_data = DB::table($this->tableName)
            ->select()
            ->where('id', '=', $id)
            ->get();

        if($asset_data->count()) {
            return view('asset.edit', [
                'asset_data'        => $asset_data[0],
                'categories'        => $categories,
                'wuoms'             => $weight_uom,
                'locations'         => $locations,
                'vendors'           => $vendors,
                'manufacturers'     => $manufacturers,
                'costcodes'         => $costcodes,
                'depts'             => $depts,
                'items'             => $items
            ]);
        }

        return dd('Asset data was not found!');
    }

    // DEBUGGING
    // Menyimpan hasil edit | POST
    public function commit_edit(Request $request) {
        $now = new DateTime();
        
        $id = $request->id;
        $type = $request->type;
        $note = $request->note;
        
        $affected = DB::table($this->tableName)
            ->where('id', $id)
            ->update ([
                'type'          => $type,
                'note'          => $note,
                'modified_time' => $now,
                'modified_id'   => $this->user_id
            ]);

        return redirect('asset', [
            'affected' => $affected
        ]);
    }
}
