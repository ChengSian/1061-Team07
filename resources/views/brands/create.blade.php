@extends('app')

@section('title', '新增品牌')

@section('smartphones_contents')
    {!! Form::open(['url' => 'brands/store']) !!}
        @include('brands.form', ['submitButtonText' => '新增品牌'])

    {!! Form::close() !!}

    @include('errors.list')

@stop
