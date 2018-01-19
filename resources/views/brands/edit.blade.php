@extends('app')

@section('title', '編輯品牌資料')

@section('smartphones_contents')
                  
                  {!! Form::open(['url'=>'brands/update']) !!}
                  {!! Form::hidden('id', $brand->id) !!}
                  編號
                  <input type="text" name="id" value = {{ $brand->id}} disabled>
                  <br>
                  {!! Form::Label('brand','品牌') !!}
                  {!! Form::text('brand',$brand->brand) !!}
                  <br>
                   {!! Form::submit('送出') !!}
                  {!! Form::close()!!}

    @include('errors.list')

@stop
