<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>LFI - SI Data</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/w3.css') }}">
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
<div class="w3-bar w3-cyan">
    <div class="w3-bar-item">
        Lasalle
    </div>
    <div class="w3-right">
        <button class="w3-bar-item w3-button" href="#"><span class="glyphicon glyphicon-user"></span> Administrator</button>
        <button class="w3-bar-item w3-button" href="#"><span class="glyphicon glyphicon-cog"></span> Ganti Password</button>
        <button class="w3-bar-item w3-button" href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</button>
    </div>
</div>

<!-- SideBar -->
<div class="w3-sidebar w3-bar-block" style="width:15%">
    <h3 class="w3-bar-item">Menu</h3>
    <a href="{{ url('asset') }}" class="w3-bar-item w3-button">Asset</a>
    <a href="{{ url('asset/type') }}" class="w3-bar-item w3-button">Asset Type</a>
</div>

<div style="margin-left:15%">
    @yield('content')
</div> 
</body>
</html>