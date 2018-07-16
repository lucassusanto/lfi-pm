@extends('layouts.lfi')

@section('js')
<script type="text/javascript">
    function getID(doc) {
        var options = doc.options;
        return options[options.selectedIndex].id;
    }
</script>
@endsection



@section('content')
<h2 align="center">Asset</h2>

<div class="row">
    <div class="col-md-1">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-2 col-md-offset-9">
        <a class="btn btn-primary" href="{{ url('asset/'.$asset_id.'/details') }}">View Details</a>
    </div>
</div><br>

<div class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_id">Asset No: *</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_id" value="{{ $asset_data->asset_no }}" disabled>
        </div>

        <label class="control-label col-sm-3">Asset Priority: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->priority_id }}</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Asset Status: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->status_id }}</option>
            </select>
        </div>

        <label class="control-label col-sm-3">Location:</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                @foreach($locations as $loc)
                @if($asset_data->location_id == $loc->id)
                <option>{{ $loc->note }}</option>
                @break
                @endif
                @endforeach
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Asset Category: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                @foreach($categories as $cat)
                @if($asset_data->type_id == $cat->id)
                <option>{{ $cat->note }}</option>
                @break
                @endif
                @endforeach
            </select>
        </div>

        <label class="control-label col-sm-3">Serial No:</label>
        <div class="col-sm-3">
            <textbox type="text" class="form-control" disabled>{{ $asset_data->serial_no }}</textbox>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_note">Notes: *</label>
        <div class="col-sm-9">
            <textbox class="form-control" disabled>{{ $asset_data->note }}</textbox>
        </div>
    </div>
</div>

<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="pill" href="#comment">Comment</a></li>
    <li><a data-toggle="pill" href="#contract">Contract</a></li>
    <li><a data-toggle="pill" href="#depreciation">Depreciation</a></li>
    <li><a data-toggle="pill" href="#downtime">Downtime</a></li>
    <li><a data-toggle="pill" href="#meter">Meter</a></li>
    <li><a data-toggle="pill" href="#part">Part</a></li>
</ul><br>

<div class="tab-content">

    <div id="comment" class="tab-pane fade in active">
        <div class="tab-content">
            <div id="comment_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#comment_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Date Time</th>
                            <th>Comment</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($comment_datas as $comment_data)
                        <tr id="{{ $comment_data->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $comment_data->modified_time }}</td>
                            <td>{{ $comment_data->comment }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="comment_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h4 align="center">Tambah Komentar Asset</h4>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-6">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Comment:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" placeholder="Tuliskan komentar.." required></textarea>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;
                
                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;
                
                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="contract" class="tab-pane fade">

        <div class="tab-content">
            <div id="contract_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#contract_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example2" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Contract</th>
                            <th>Note</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($contract_datas as $contract_datas)
                        <tr id="{{ $contract_datas->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $contract_datas->contract }}</td>
                            <td>{{ $contract_datas->note }}</td>
                            <td>{{ $contract_datas->status_id }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="contract_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/contract/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Tambah Kontrak Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/contract') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-4" align="center">

                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ac_contract">Contract: *</label>
                        <div class="col-sm-3">
                            <input type="hidden" id="ac_contract" name="contract" value="{{ $contracts[0]->id }}">
                            <select class="form-control" onchange="document.getElementById('ac_contract').value = getID(this);">
                                @foreach($contracts as $contract)
                                <option id="{{ $contract->id }}">{{ $contract->contract }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ac_status">Status: *</label>
                        <div class="col-sm-3">
                            <select class="form-control" id="ac_status" name="status">
                                <option>Valid</option>
                                <option>Expired</option>
                                <option>Canceled</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ac_sd">Start Date: *</label>
                        <div class="col-sm-3">
                            <input type="date" class="form-control" id="ac_sd" name="sd" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ac_ed">End Date: *</label>
                        <div class="col-sm-3">
                            <input type="date" class="form-control" id="ac_ed" name="ed" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ac_note">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="ac_note" name="note" placeholder="Tuliskan catatan.."></textarea>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;
                
                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;
                
                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="depreciation" class="tab-pane fade">

        <div class="tab-content">
            <div id="depreciation_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#depreciation_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example3" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>End Value(USD)</th>
                            <th>Note</th>
                            <th>Depreciation Rate</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($depreciation_datas as $depreciation_datas)
                        <tr id="{{ $depreciation_datas->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $depreciation_datas->start_date }}</td>
                            <td>{{ $depreciation_datas->end_date }}</td>
                            <td>{{ $depreciation_datas->end_value }}</td>
                            <td>{{ $depreciation_datas->note }}</td>
                            <td>{{ $depreciation_datas->depreciation_rate }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="depreciation_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/depreciation/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Tambah Asset Depreciation</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/depreciation') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-4" align="center">
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_sd">Start Date: *</label>
                        <div class="col-sm-3">
                            <input type="date" class="form-control" id="ad_sd" name="sd" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_ed">End Date: *</label>
                        <div class="col-sm-3">
                            <input type="date" class="form-control" id="ad_ed" name="ed" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_rate">Depreciation rate: *</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="ad_rate" name="rate" placeholder="0.5" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_sv">Start Value: *</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="ad_sv" name="sv" placeholder="100" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_ev">End Value: *</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="ad_ev" name="ev" placeholder="0" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_note">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan.."></textarea>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;

                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;

                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="downtime" class="tab-pane fade">
        <div class="tab-content">
            <div id="downtime_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#downtime_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example4" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Hours</th>
                            <th>Note</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($downtime_datas as $downtime_datas)
                        <tr id="{{ $downtime_datas->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $downtime_datas->start_time }}</td>
                            <td>{{ $downtime_datas->end_time }}</td>
                            <td>{{ $downtime_datas->hours }}</td>
                            <td>{{ $downtime_datas->note }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="downtime_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/downtime/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Tambah Asset Downtime</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/downtime') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-4" align="center">

                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_st_date">Start Time: *</label>
                        <div class="col-sm-2">
                            <input type="date" class="form-control" id="ad_st_date" name="st_date" required>
                        </div>
                        <div class="col-sm-2">
                            <input type="time" class="form-control" id="ad_st_time" name="st_time" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_et_date">End Time: *</label>
                        <div class="col-sm-2">
                            <input type="date" class="form-control" id="ad_et_date" name="et_date" required>
                        </div>
                        <div class="col-sm-2">
                            <input type="time" class="form-control" id="ad_et_time" name="et_time" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_hours">Hours: *</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="ad_hours" name="hours" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_downtime">Downtime: *</label>
                        <div class="col-sm-3">
                            <select class="form-control" id="ad_downtime" name="downtime">
                                <option>Emergency</option>
                                <option>Planned Maintenance</option>
                                <option>Project</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_dcause">Downtime Cause: *</label>
                        <div class="col-sm-3">
                            <select class="form-control" id="ad_dcause" name="dcause">
                                <option>Operation</option>
                                <option>Maintenance</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3">Work Order: *</label>
                        <div class="col-sm-3">
                            <input type="hidden" id="ad_wo" name="wo" value="{{ $wos[0]->id }}">
                            <select class="form-control" onchange="document.getElementById('ad_wo').value = getID(this);">
                                @foreach($wos as $wo)
                                <option id="{{ $wo->id }}">{{ $wo->note }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3">Reported by: *</label>
                        <div class="col-sm-3">
                            <input type="hidden" id="ad_user" name="user" value="{{ $users[0]->id }}">
                            <select class="form-control" onchange="document.getElementById('ad_user').value = getID(this);">
                                @foreach($users as $user)
                                <option id="{{ $user->id }}">{{ $user->full_name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_ra_date">Reported at:</label>
                        <div class="col-sm-2">
                            <input type="date" class="form-control" id="ad_ra_date" name="ra_date">
                        </div>
                        <div class="col-sm-2">
                            <input type="time" class="form-control" id="ad_ra_time" name="ra_time">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ad_note">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan.."></textarea>
                        </div>
                    </div>

                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;

                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;

                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="meter" class="tab-pane fade">

        <div class="tab-content">
            <div id="meter_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#meter_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example5" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Meter no.</th>
                            <th>Reading</th>
                            <th>Time taken</th>
                            <th>Note</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($meter_datas as $meter_datas)
                        <tr id="{{ $meter_datas->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $meter_datas->meter_no }}</td>
                            <td>{{ $meter_datas->reading }}</td>
                            <td>{{ $meter_datas->time_taken }}</td>
                            <td>{{ $meter_datas->note }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="meter_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/meter/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Tambah Asset Meter</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/meter') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-4" align="center">
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_no">Meter No:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="meter_no" name="no" placeholder="Meter No" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_type">Type:</label>
                        <div class="col-sm-3">
                            <input type="hidden" id="meter_type" name="type" value="">
                            <select class="form-control" onchange="document.getElementById('meter_type').value = setID(this);">
                                <option></option>
                                @foreach($meter_type as $m_type)
                                <option id="{{ $m_type->id }}">{{ $m_type->type }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_uom">Reading Unit:</label>
                        <div class="col-sm-3">
                            <input type="hidden" id="meter_uom" name="uom" value="">
                            <select class="form-control" onchange="document.getElementById('meter_uom').value = setID(this);">
                                <option></option>
                                @foreach($meter_uom as $m_uom)
                                <option id="{{ $m_uom->id }}">{{ $m_uom->uom }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_rollup">Meter Rollup:</label>
                        <div class="col-sm-3">
                            <select class="form-control" id="meter_rollup" name="rollup">
                                <option>None</option>
                                <option>Rollup Change</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_rr">Rollover Reading:</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="meter_rr" name="rr" placeholder="Rollover Reading" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="meter_note">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="meter_note" name="note" placeholder="Tuliskan catatan .."></textarea>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;

                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;

                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="part" class="tab-pane fade">
        <div class="tab-content">
            <div id="part_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#part_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example6" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Item</th>
                            <th>Type</th>
                            <th>Note</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($part_datas as $part_datas)
                        <tr id="{{ $part_datas->id }}">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $part_datas->in_no }}</td>
                            <td>{{ $part_datas->type_id }}</td>
                            <td>{{ $part_datas->note }}</td>
                            <td align="center">
                                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div id="part_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/part/new') }}">
                    @csrf
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="category">Item:</label>
                        <div class="col-sm-3">
                            <input type="text" id="inventory" name="item" value="">
                            <select class="form-control" onchange="document.getElementById('inventory').value = setID(this);" >
                                <option></option>
                                @foreach($item as $item)
                                <option id="{{ $item->id }}">{{ $item->in_no }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="category">Type:</label>
                        <div class="col-sm-3">
                            <select class="form-control" id="type" name="type">
                                <option>Major</option>
                                <option>Routine</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="category">QTY:</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="qty" name="qty" placeholder="qty" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="category">Weight UOM:</label>
                        <div class="col-sm-3">
                            <input type="text" id="uom" name="weight_uom" value="">
                            <select class="form-control" onchange="document.getElementById('uom').value = setID(this);">
                                <option></option>
                                @foreach($weight_uom as $weight_uom)
                                <option id="{{ $weight_uom->id }}">{{ $weight_uom->uom }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="notes">Notes:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="notes" name="notes" placeholder="Tuliskan catatan .."></textarea>
                        </div>
                    </div>
                    <br>


                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-4">
                            <button class="btn btn-danger"><span class="glyphicon glyphicon-trash" ></span> Delete</button>
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                            <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Delete Data Form -->
                    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                        <input type="hidden" id="comment_modal_id" name="id" value=""></input>
                        @csrf

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Konfirmasi</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                                <div class="col-md-6">
                                    <label class="control-label text-left" id="comment_modal_comment"></label>
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

        <!-- Edit Data Form -->
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;

                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;

                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>
</div>

@endsection