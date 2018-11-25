<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <title>LFI - Login</title>

    @include('layouts.style.login')
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
        <a href="#" class="navbar-left"><img src="{{ url('images/logo.png') }}" height="50px"></a>
        <a class="navbar-brand" href="#">Sistem Informasi Terintegrasi</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
        </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-4 kotak">
      <h2 align="center">Login</h2>

      <h5 align="center" style="color: red">Click Login to get into the app. This is only a login mockup. Delete this line in the future</h5><br>

      <form>
        @csrf
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