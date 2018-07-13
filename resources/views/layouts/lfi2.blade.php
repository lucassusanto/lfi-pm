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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        body {
            background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));
        }
        #content {
            background-color: white;
        }
        .form-horizontal .control-label.text-left {
            text-align: left;
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
    <a href="#" class="w3-bar-item w3-button">Link 1</a>
    <a href="#" class="w3-bar-item w3-button">Link 2</a>
    <a href="#" class="w3-bar-item w3-button">Link 3</a>
</div>

<div style="margin-left:15%">
    @yield('content')
</div> 
</body>
</html>