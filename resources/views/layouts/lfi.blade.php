<!DOCTYPE html>
<html>
<head>
    <!--
        BUGS ! Line 37, 82

        Comments:
        {{ Request::url() }}    ->  http://localhost/pweb/lfi-pm/public/asset/new
        {{ Request::path() }}   ->  asset/new 
    -->

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

    <!-- Bug: Cek fungsinya -->
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
            <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
    </div>
</div>
</nav>

<div class="row">
<!-- SideBar -->
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
            <!-- Bug: Animation -->
            <div id="collapseOne" class="panel-collapse">
                <div class="panel-body">
                    <table class="table">
                        <!-- Asset Master -->
                        <tr>
                            @if(Request::path() == 'asset')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset') }}">Asset</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset') }}">Asset</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Comment -->
                        <tr>
                            @if(Request::path() == 'asset/comment')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/comment') }}">Asset Comment</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/comment') }}">Asset Comment</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Contract -->
                        <tr>
                            @if(Request::path() == 'asset/contract')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/contract') }}">Asset Contract</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/contract') }}">Asset Contract</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Depreciation -->
                        <tr>
                            @if(Request::path() == 'asset/depreciation')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/depreciation') }}">Asset Depreciation</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/depreciation') }}">Asset Depreciation</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Downtime -->
                        <tr>
                            @if(Request::path() == 'asset/downtime')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/downtime') }}">Asset Downtime</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/downtime') }}">Asset Downtime</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Meter -->
                        <tr>
                            @if(Request::path() == 'asset/meter')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/meter') }}">Asset Meter</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/meter') }}">Asset Meter</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Part -->
                        <tr>
                            @if(Request::path() == 'asset/part')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/part') }}">Asset Part</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/part') }}">Asset Part</a>
                            </td>
                            @endif
                        </tr>


                        <!-- Asset Service Log -->
                        <tr>
                            @if(Request::path() == 'asset/service_log')
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/service_log') }}">Asset Service Log</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/service_log') }}">Asset Service Log</a>
                            </td>
                            @endif
                        </tr>

                        <!-- Asset Type -->
                        <tr>
                        @if($request->is('asset/type/*'))
                           {{-- @if(Request::path() == 'asset/type') --}}
                            <td style="background-color: rgb(246,246,246);">
                                <a href="{{ url('asset/type') }}">Asset Type</a>
                            </td>
                            @else
                            <td>
                                <a href="{{ url('asset/type') }}">Asset Type</a>
                            </td>
                            @endif
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

<!-- Content Area -->
<div class="col-sm-8 col-md-8">
    <div id="content" class="well">
        @yield('content')
    </div>
</div>
</div>

</body>
</html>