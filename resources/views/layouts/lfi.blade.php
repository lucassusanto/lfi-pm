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

    <!-- Styles -->
    <style>
        body {
            background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));
        }
        #content {
            background-color: white;
        }
    </style>

    <!-- Scripts -->
    <script type="text/javascript"> 
        $(document).ready(function() {
            $('#example').DataTable( {
                "scrollY":        "400px",
                "scrollCollapse": true,
                "paging":         false
            } );
        } );
    </script>

    @yield('js')
</head>

<body>
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
                <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Ganti Password</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="row">
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
                        <!-- Asset Master -->
                        <tr>
                            <td
                            @if(Request::path() == 'asset' || Request::path() == 'asset/view' || Request::path() == 'asset/edit' || Request::path() == 'asset/new')
                            style="background-color: rgb(244,244,244);"
                            @endif
                            ><a href="{{ url('asset') }}">Asset</a></td>
                        </tr>

                        <!-- Asset Comment -->
                        <tr>
                            <td @if(Request::is('asset/*/comment*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/comment') }}">Asset Comment</a>
                            </td>
                        </tr>

                        <!-- Asset Contract -->
                        <tr>
                            <td @if(Request::is('asset/*/contract*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/contract') }}">Asset Contract</a>
                            </td>
                        </tr>

                        <!-- Asset Depreciation -->
                        <tr>
                            <td @if(Request::is('asset/*/depreciation*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/depreciation') }}">Asset Depreciation</a>
                            </td>
                        </tr>

                        <!-- Asset Downtime -->
                        <tr>
                            <td @if(Request::is('asset/*/downtime*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/downtime') }}">Asset Downtime</a>
                            </td>
                        </tr>

                        <!-- Asset Meter -->
                        <tr>
                            <td @if(Request::is('asset/*/meter*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/meter') }}">Asset Meter</a>
                            </td>
                        </tr>

                        <!-- Asset Part -->
                        <tr>
                            <td @if(Request::is('asset/*/part*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/10008/part') }}">Asset Part</a>
                            </td>
                        </tr>

                        <!-- Asset Service Log -->
                        <tr>
                            <td @if(Request::is('asset/slog*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="#">Asset Service Log</a>
                            </td>
                        </tr>

                        <!-- Asset Type -->
                        <tr>
                            <td @if(Request::is('asset/type*')) style="background-color: rgb(244,244,244);" @endif>
                                <a href="{{ url('asset/type') }}">Asset Type</a>
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
                                <!--span class="glyphicon glyphicon-cog"></span><a href="#"> Ganti Password</a-->
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Content Area -->
<div class="col-sm-8 col-md-8">
    <div id="content" class="well">
        @yield('content')
    </div>
</div>
</div>

</body>
</html>