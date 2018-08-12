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
        $categories = DB::table('asset_type')
        ->select('id', 'note')
        ->get();
        
        if($categories->count() < 1)
            return $this->show_error('asset_type table seems empty. Please add at least 1 data');


        $datas = DB::table('asset')
        ->join('asset_type', 'asset.type_id', '=', 'asset_type.id')
        ->select('asset.id', 'asset.asset_no', 'asset.status_id', 'asset_type.note as asset_type_note', 'asset.note')
        ->get();

        return view('asset.master', [
            'datas' => $datas
        ]);
    }

    // Menampilkan form data baru | GET
    public function new_data() {
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
    public function commit_new_data(Request $request) {
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
    public function commit_delete(Request $request) {
        $id = $request->id;

        DB::table('asset')
        ->where('id', '=', $id)
        ->delete();

        return redirect('asset');
    }

    // Menampilkan detil data edit | POST
    public function show_edit(Request $request) {
        $id = $request->id;

        $asset_data = DB::table('asset')
        ->select()
        ->where('id', '=', $id)
        ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data was not found!');


        $out = $this->listQueries();
        if(!empty($out)) return $out;

        return view('asset.edit', [
            'asset_id'          => $id,
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
    public function commit_edit(Request $request) {
        $now = new DateTime();
        $id = $request->id;

        DB::table('asset')
        ->where('id', $id)
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
    
    public function view(Request $request) {
        $id = $request->id;
        
        $asset_data = DB::table('asset')
        ->select()
        ->where('id', '=', $id)
        ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data id was not found!');


        $out = $this->listQueries();
        if(!empty($out)) return $out;

        // Comment
        $comment_datas = DB::table('asset_comment')
        ->select('id', 'comment', 'modified_time')
        ->where('asset_id', '=', $id)
        ->get();

        $meter_datas = DB::table('asset_meter')
        ->select('id','meter_no','reading','time_taken','note')
        ->where('asset_id', '=', $id)
        ->get();


        $part_datas = DB::table('asset_part')
        ->select('asset_part.id','asset_part.asset_id','inventory.in_no','asset_part.type_id','asset_part.note')
        ->join('inventory','asset_part.in_id','=','inventory.id')
        ->where('asset_part.asset_id','=', $id)
        ->get();

        $contract_datas = DB::table('asset_contract')
        ->select('asset_contract.id', 'contract.contract', 'asset_contract.status_id', 'asset_contract.start_date', 'asset_contract.end_date','asset_contract.note')
        ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
        ->where('asset_contract.asset_id', '=', $id)
        ->get();

        $depreciation_datas = DB::table('asset_depreciation')
        ->select('id', 'start_date', 'end_date', 'end_value', 'note' ,'depreciation_rate')
        ->where('asset_id', '=', $id)
        ->get();

        $downtime_datas = DB::table('asset_downtime')
        ->select('id', 'start_time', 'end_time', 'hours', 'note')
        ->where('asset_id', '=', $id)
        ->get();

        $contracts = $this->getContract($id);

        $wos = $this->getWO();
        if($wos == false)
            return $this->show_error('Work order table seems empty');

        $users = $this->getUsers();
        if($users == false)
            return $this->show_error('Users table seems empty');

        $type = DB::Table('meter_type')
        ->select('id','type')
        ->get();

        $uom = DB::Table('uom')
        ->select('id','uom')
        ->get();

        $item = DB::table('inventory')
        ->select('id','in_no')
        ->get();

        $weight_uom = DB::table('uom')
        ->select('id', 'uom')
        ->get();

        
        $redir = session('redir');

        return view('asset.view', [
            'asset_id'              => $id,
            'asset_data'            => $asset_data[0],
            'categories'            => $this->categories,
            'locations'             => $this->locations,
            'wuoms'                 => $this->weight_uom,
            
            // Sub modules
            'comment_datas'         => $comment_datas,
            'meter_datas'           => $meter_datas,
            'part_datas'            => $part_datas,
            'contract_datas'        => $contract_datas,
            'depreciation_datas'    => $depreciation_datas,
            'downtime_datas'        => $downtime_datas,

            'contracts'     => $contracts,
            'wos'           => $wos,
            'users'         => $users,
            'meter_type'    => $type,
            'meter_uom'     => $uom,
            'item'          => $item,
            'weight_uom'    => $weight_uom,

            'redir'     => $redir
        ]); 
    }

    // Versi AJAX
    public function view2(Request $request) {
        $id = $request->id;
        
        $asset_data = DB::table('asset')
        ->select()
        ->where('id', '=', $id)
        ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data id was not found!');


        $out = $this->listQueries();
        if(!empty($out)) return $out;

        // Comment
        $comment_datas = DB::table('asset_comment')
        ->select('id', 'comment', 'modified_time')
        ->where('asset_id', '=', $id)
        ->get();

        $meter_datas = DB::table('asset_meter')
        ->select('id','meter_no','reading','time_taken','note')
        ->where('asset_id', '=', $id)
        ->get();


        $part_datas = DB::table('asset_part')
        ->select('asset_part.id','asset_part.asset_id','inventory.in_no','asset_part.type_id','asset_part.note')
        ->join('inventory','asset_part.in_id','=','inventory.id')
        ->where('asset_part.asset_id','=', $id)
        ->get();

        $contract_datas = DB::table('asset_contract')
        ->select('asset_contract.id', 'contract.contract', 'asset_contract.status_id', 'asset_contract.start_date', 'asset_contract.end_date','asset_contract.note')
        ->join('contract', 'contract.id', '=', 'asset_contract.contract_id')
        ->where('asset_contract.asset_id', '=', $id)
        ->get();

        $depreciation_datas = DB::table('asset_depreciation')
        ->select('id', 'start_date', 'end_date', 'end_value', 'note' ,'depreciation_rate')
        ->where('asset_id', '=', $id)
        ->get();

        $downtime_datas = DB::table('asset_downtime')
        ->select('id', 'start_time', 'end_time', 'hours', 'note')
        ->where('asset_id', '=', $id)
        ->get();

        $contracts = $this->getContract($id);

        $wos = $this->getWO();
        if($wos == false)
            return $this->show_error('Work order table seems empty');

        $users = $this->getUsers();
        if($users == false)
            return $this->show_error('Users table seems empty');

        $type = DB::Table('meter_type')
        ->select('id','type')
        ->get();

        $uom = DB::Table('uom')
        ->select('id','uom')
        ->get();

        $item = DB::table('inventory')
        ->select('id','in_no')
        ->get();

        $weight_uom = DB::table('uom')
        ->select('id', 'uom')
        ->get();

        
        $redir = session('redir');

        return view('asset.view2', [
            'asset_id'              => $id,
            'asset_data'            => $asset_data[0],
            'categories'            => $this->categories,
            'locations'             => $this->locations,
            'wuoms'                 => $this->weight_uom,
            
            // Sub modules
            'comment_datas'         => $comment_datas,
            'meter_datas'           => $meter_datas,
            'part_datas'            => $part_datas,
            'contract_datas'        => $contract_datas,
            'depreciation_datas'    => $depreciation_datas,
            'downtime_datas'        => $downtime_datas,

            'contracts'     => $contracts,
            'wos'           => $wos,
            'users'         => $users,
            'meter_type'    => $type,
            'meter_uom'     => $uom,
            'item'          => $item,
            'weight_uom'    => $weight_uom,

            'redir'     => $redir
        ]); 
    }

    public function details(Request $request) {
        $id = $request->id;
        
        $asset_data = DB::table('asset')
        ->select()
        ->where('id', '=', $id)
        ->get();

        if($asset_data->count() < 1)
            return $this->show_error('Asset data id was not found!');

        
        $out = $this->listQueries();
        if(!empty($out)) return $out;

        return view('asset.details', [
            'asset_id'          => $id,
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