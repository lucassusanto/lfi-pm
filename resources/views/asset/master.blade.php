@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="asset/new"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id=example width="100%" class="table">
    <thead>
        <tr>
            <th>Asset No</th>
            <th>Type</th>
            <th>Asset Status</th>
            <th>Asset Category</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>100-001</td>
            <td>100</td>
            <td>In service</td>
            <td>Location</td>
            <td>Office area</td>
            <td align="center">
                <button class="btn btn-danger" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                <a href="{{ url('asset/edit') }}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
            </td>
        </tr>
    </tbody>
    <tfoot></tfoot>
</table>
        

<!-- Modal -->
<div id="modal-konfirmasi" class="modal fade" role="dialog">
<div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
    <form class="form-horizontal" action="action.php">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Konfirmasi</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <h4 align="center">Apakah Anda ingin <span style="color: red;">menghapus</span> data ini?</h4>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="no">Asset No:</label>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="priority">Asset Priority:</label>
                <label class="control-label col-sm-3" for="priority">Critical</label>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="status">Asset Status:</label>
                <div class="col-sm-4">
                    <select class="form-control" id="asset_status" name="status" disabled>
                        <option>In service</option>
                        <option>In repair</option>
                        <option>Scrapped</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="category">Asset Category:</label>
                <div class="col-sm-4">
                    <select class="form-control" id="asset_category" name="category" disabled>
                        <option>Equipment</option>
                        <option>Building</option>
                        <option>System</option>
                        <option>Location</option>
                    </select>
                </div>
            </div>        
            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="notes">Notes:</label>
                <div class="col-sm-9">
                    <textarea class="form-control" id="asset_notes" name="notes" disabled></textarea>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</button>
        </div>
    </form>
    </div>
</div>
</div>
@endsection