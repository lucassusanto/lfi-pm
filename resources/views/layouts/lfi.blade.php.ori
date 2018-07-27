<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>LFI - SI Data</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/w3.css') }}">
    <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/bootstrap.min.css') }}">
    <script src="{{ asset('bootstrap-3.3.7/jquery.min.js') }}"></script>
    <script src="{{ asset('bootstrap-3.3.7/bootstrap.min.js') }}"></script>

    <!-- Datatables -->
    <link rel="stylesheet" type="text/css" href="{{ asset('datatables/datatables.min.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('datatables/jquery.dataTables.min.css') }}">
    <script type="text/javascript" src="{{ asset('datatables/datatables.min.js') }}"></script>

    <!-- Styles -->
    <style>
        body {
            background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));
        }
        #content {
            background-color: white;
        }
        .form-horizontal .control-label.text-left {
            text-align: left;
            font-weight: normal;
        }
    </style>

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