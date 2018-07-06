<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>LFI - SI Data</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

    <!-- Datatables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
    
    <!-- ? -->
    <script type="text/javascript"> 
        $(document).ready(function() {
            $('#example').DataTable( {
                "scrollY":        "200px",
                "scrollCollapse": true,
                "paging":         false
            } );
        } );
    </script>
</head>

<body style="background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));">

{{ url('layouts.lfi') }}

<!-- NavBar -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="#">PT Lasallefood Indonesia - SI Data</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Administrator</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="row">
<!--========================================== Side Navigation ==========================================-->
    <div class="col-sm-2 col-md-2 col-md-offset-1">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <span class="glyphicon glyphicon-folder-close"></span> Asset
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td style="background-color: rgb(246,246,246);">
                                    <a href="index.html">Asset</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#">Asset Type</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            <span class="glyphicon glyphicon-file"></span> Maintenance
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table class="table">
                            <tr>
                                <td>
                                    <span class="glyphicon glyphicon-cog"></span><a href="#"> Ganti Password</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--============================================ Content Area ============================================-->
    <div class="col-sm-8 col-md-8">
        <div class="well" style=" background-color: white;">
            <div class="row">
                <div class="col-md-12">
                    <h2 align="center">Asset</h2>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-success" href="asset_new.html"><span class="glyphicon glyphicon-plus"></span> Add</a>
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
                            <a href="asset_edit.html" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
                        </td>
                    </tr>
                </tbody>
                <tfoot></tfoot>
            </table>
        </div>
    </div>
</div>

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
                <label class="control-label col-sm-3" for="no">Asset No:</label>
                <label class="control-label col-sm-3" for="no">100-001</label>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="priority">Asset Priority:</label>
                <label class="control-label col-sm-3" for="priority">Critical</label>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="status">Asset Status:</label>
                <div class="col-sm-4">
                    <select class="form-control" id="asset_status" name="status" disabled>
                        <option>In service</option>
                        <option>In repair</option>
                        <option>Scrapped</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3" for="category">Asset Category:</label>
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
                <label class="control-label col-sm-3" for="notes">Notes:</label>
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

</body>
</html>