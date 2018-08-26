@extends('layouts.lfi')

@section('content')
@include('asset.v2.master')

<ul class="nav nav-tabs">
    <li class="active"><a onclick="getComment()" data-toggle="pill" href="#comment_index">Comment</a></li>
    <li><a onclick="getContract()" data-toggle="pill" href="#contract_index">Contract</a></li>
    <li><a onclick="getDepreciation()" data-toggle="pill" href="#depreciation_index">Depreciation</a></li>
    <li><a onclick="getDowntime()" data-toggle="pill" href="#downtime_index">Downtime</a></li>
    <li><a onclick="getMeter()" data-toggle="pill" href="#meter_index">Meter</a></li>
    <li><a onclick="getPart()" data-toggle="pill" href="#part_index">Part</a></li>
</ul><br>

<div class="tab-content">
@include('asset.v2.comment')
@include('asset.v2.contract')
@include('asset.v2.depreciation')
@include('asset.v2.downtime')
@include('asset.v2.meter')
@include('asset.v2.part')
</div>
@endsection


@section('js')
<script>
function getID(doc) {
    var options = doc.options;
    return options[options.selectedIndex].id;
}

// --------------------------- Init Table ---------------------------
$(function() {
    var comment_table = $('#comment_table').DataTable({
        "order": [[ 1, "desc" ]]
    });
    var contract_table = $('#contract_table').DataTable({
        "order": [[ 1, "desc" ]]
    });
    var depreciation_table = $('#depreciation_table').DataTable({
        "order": [[ 1, "desc" ]]
    });
    var downtime_table = $('#downtime_table').DataTable({
        "order": [[ 1, "desc" ]]
    });
    var meter_table = $('#meter_table').DataTable({
        "order": [[ 1, "desc" ]]
    });
    var part_table = $('#part_table').DataTable({
        "order": [[ 1, "desc" ]]
    });

    comment_table.columns(0).visible(false);
    contract_table.columns(0).visible(false);
    depreciation_table.columns(0).visible(false);
    downtime_table.columns(0).visible(false);
    meter_table.columns(0).visible(false);
    part_table.columns(0).visible(false);

    $('#form_add_comment').validate();
    $('#form_edit_comment').validate();

    $('#form_add_contract').validate();
    $('#form_edit_contract').validate();

    $('#form_add_depreciation').validate();
    $('#form_edit_depreciation').validate();

    $('#form_add_downtime').validate();
    $('#form_edit_downtime').validate();

    $('#form_add_meter').validate({
        rules: {
            no: {
                remote: '{{ url('api/asset/meter/cekNo') }}'
            }
        },
        messages: {
            no: {
                remote: 'This Meter No already exists.'
            }
        }
    });
    $('#form_edit_meter').validate();

    $('#form_add_part').validate({
        rules: {
            qty: 'number'
        }
    });
    $('#form_edit_part').validate({
        rules: {
            qty: 'number'
        }
    });

    getComment();
});
</script>
@endsection