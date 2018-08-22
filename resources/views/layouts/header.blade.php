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