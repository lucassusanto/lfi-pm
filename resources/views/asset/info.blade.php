@extends('adminlte::page')

@section('title', 'LFI - Whoops!')

@section('content_header')
    <h1>Whoops!</h1>
@stop

@section('content')
@include('status')
<a class="btn btn-default" href="{{ url($link) }}">Go Back</a>
@stop