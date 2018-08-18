<!DOCTYPE html>
<html lang="en">
<head>
  <title>LFI - Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/w3.css') }}">
  <link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/bootstrap.min.css') }}">
  <script src="{{ asset('bootstrap-3.3.7/jquery.min.js') }}"></script>
  <script src="{{ asset('bootstrap-3.3.7/bootstrap.min.js') }}"></script>

</head>
<body style="background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));">

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
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
        </ul>
    </div>
  </div>
</nav>

<style>
.kotak {
  background-color: rgb(245,245,245);
  border-radius: 8px;
}
</style>

<div class="container">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-4 kotak">
      <h2 align="center">Login</h2><br>
      <form>
        <div class="form-group input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
          <input type="text" class="form-control" id="username" placeholder="Username">
        </div>
        <div class="form-group input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
          <input type="password" class="form-control" id="pwd" placeholder="Password">
        </div>
        <div class="form-group">
          <div align="center">
            <a href="#">Forget Password</a>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-6">
            <a href="#" class="btn btn-primary btn-block">Sign Up</a>
          </div>
          <div class="col-sm-offset-6">
            <a href="{{ url('asset') }}" class="btn btn-success btn-block">Login</a>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>