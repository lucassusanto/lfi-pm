@extends('layouts.lfi')

@section('content')
<div class="alert alert-danger">
    <b>{{ $title }}</b> {{ $msg }}
</div>

<a class="btn btn-default" href="{{ $link }}">Go Back</a>
@endsection