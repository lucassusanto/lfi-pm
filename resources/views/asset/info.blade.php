@extends('layouts.lfi')

@section('content')
<div class="alert alert-danger">
    <b>{{ $title }}</b> {{ $msg }}
</div>

<a class="btn btn-default" href="{{ url('asset') }}">Go Back</a>
@endsection