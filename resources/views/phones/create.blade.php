@extends('app')

@section('title', '新增手機')

@section('smartphones_contents')
    {!! Form::open(['url' => 'phones/store']) !!}
    @include('phones.form', ['submitButtonText' => '新增手機'])
    {!! Form::close() !!}

    @include('errors.list')

@stop
