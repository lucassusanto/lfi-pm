@if (count($errors))
<div class="alert alert-danger alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h4><i class="icon fa fa-ban"></i> Error occured!</h4>
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

@if (!empty($successes))
<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h4><i class="icon fa fa-check"></i> Success!</h4>
    <ul>
        @foreach ($successes as $msg)
        <li>{{ $msg }}</li>
        @endforeach
    </ul>
</div>
@endif

@if (!empty(session('successes')))
<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h4><i class="icon fa fa-check"></i> Success!</h4>
    <ul>
        @foreach (session('successes') as $msg)
        <li>{{ $msg }}</li>
        @endforeach
    </ul>
</div>
@endif