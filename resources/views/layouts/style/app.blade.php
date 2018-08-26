<!-- Bootstrap -->
<link rel="stylesheet" href="{{ asset('bootstrap-3.3.7/bootstrap.min.css') }}">
<script src="{{ asset('bootstrap-3.3.7/jquery.min.js') }}"></script>
<script src="{{ asset('bootstrap-3.3.7/bootstrap.min.js') }}"></script>

<!-- Datatables -->
<link rel="stylesheet" type="text/css" href="{{ asset('datatables/datatables.min.css') }}"/>
<link rel="stylesheet" type="text/css" href="{{ asset('datatables/jquery.dataTables.min.css') }}">
<script type="text/javascript" src="{{ asset('datatables/datatables.min.js') }}"></script>

<!-- jQuery Form Validation -->
<script src="{{ asset('js/jquery.validate.min.js') }}"></script>
<script type="text/javascript">
$.validator.setDefaults({
    highlight: function(element) {
        $(element).closest('.form-group').removeClass('has-success');
        $(element).closest('.form-group').addClass('has-error');
    },
    unhighlight: function(element) {
        $(element).closest('.form-group').removeClass('has-error');
        $(element).closest('.form-group').addClass('has-success');
    },
    errorElement: 'span',
    errorClass: 'help-block',
    errorPlacement: function(error, element) {
        if(element.parent('.input-group').length) {
            error.insertAfter(element.parent());
        } else {
            error.insertAfter(element);
        }
    }
});
</script>

<!-- AJAX Setup -->
<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
</script>

<!-- Styles -->
<style type="text/css">
body {
    background: linear-gradient(to right, rgb(34, 134, 255), rgb(153, 230, 234));
    margin-top: 4%;
}
#content {
    background-color: white;
}
.form-horizontal .control-label.text-left {
    text-align: left;
    font-weight: normal;
}
.nav.navbar-nav.navbar-right li a {
    color: black;
}
.nav.navbar-nav.navbar-right li a:hover {
    background-color: rgb(152, 229, 234);
}
</style>

<!-- Animation -->
<style type="text/css">
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-bottom: 16px solid blue;
  width: 30px;
  height: 30px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
  display: none;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>