@extends('layouts.lfi')

@section('content')
<p>{{ $msg }}</p>
<a href="{{ url('asset') }}">Go Back</a>
@endsection