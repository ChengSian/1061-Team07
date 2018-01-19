@extends('app')

@section('title', '編輯手機資料')

@section('smartphones_contents')

    {!! Form::open(['url'=>'phones/update']) !!}
    {!! Form::hidden('id', $phone->id) !!}
    編號
    <input type="text" name="id" value={{ $phone->id}} disabled>
    <br>
    {!! Form::label('brand_id', "手機品牌：") !!}
    <select name="brand_id">
        @foreach($brands as $brand)
            @if (isset($phone->brand_id))
                @if ($phone->brand_id == $brand->id)
                    <option value="{{ $brand->id }}" selected>{{ $brand->brand }}</option>
                @else
                    <option value="{{ $brand->id }}">{{ $brand->brand}}</option>
                @endif
            @else
                <option value="{{ $brand->id }}">{{ $brand->brand }}</option>
            @endif
        @endforeach
    </select>

    <br>
    {!! Form::label('Phone_name', "手機名稱：") !!}
    {!! Form::text('Phone_name',  $phone->Phone_name  ) !!}
    <br/>
    {!! Form::label('Colour', "顏色：") !!}
    {!! Form::text('Colour', $phone->Colour ) !!}
    <br/>
    {!! Form::label('Screen_size', "螢幕尺寸：") !!}
    {!! Form::text('Screen_size',  $phone->Screen_size  ) !!}
    <br/>
    {!! Form::label('Screen_resolution', "螢幕解析度：") !!}
    {!! Form::text('Screen_resolution', $phone->Screen_resolution  ) !!}
    <br/>
    {!! Form::label('operating_system', "作業系統：") !!}
    {!! Form::text('operating_system',  $phone->operating_system ) !!}
    <br/>
    {!! Form::label('CPU', "中央處理器：") !!}
    {!! Form::text('CPU',  $phone->CPU ) !!}
    <br/>
    {!! Form::label('RAM', "記憶體：") !!}
    {!! Form::text('RAM',  $phone->RAM ) !!}
    <br/>
    {!! Form::label('ROM', "儲存空間：") !!}
    {!! Form::text('ROM',  $phone->ROM ) !!}
    <br/>
    {!! Form::label('SIM', "SIM卡：") !!}
    {!! Form::text('SIM', $phone->SIM ) !!}
    <br/>
    {!! Form::label('MicroSD', "記憶卡：") !!}
    {!! Form::text('MicroSD',$phone->MicroSD ) !!}
    <br/>
    {!! Form::label('Front_camera', "前相機：") !!}
    {!! Form::text('Front_camera',$phone->Front_camera ) !!}
    <br/>
    {!! Form::label('Main_camera', "主相機：") !!}
    {!! Form::text('Main_camera',$phone->Main_camera  ) !!}
    <br/>
    {!! Form::label('Communication_agreement', "通訊協定：") !!}
    {!! Form::text('Communication_agreement',$phone->Communication_agreement  ) !!}
    <br/>
    {!! Form::label('Link_web', "連結與網路：") !!}
    {!! Form::text('Link_web', $phone->Link_web  ) !!}
    <br/>
    {!! Form::label('specification', "手機尺寸：") !!}
    {!! Form::text('specification',$phone->specification ) !!}
    <br/>
    {!! Form::label('Phone_weight', "手機重量：") !!}
    {!! Form::text('Phone_weight',$phone->Phone_weight  ) !!}
    <br/>
    {!! Form::label('battery', "電池：") !!}
    {!! Form::text('battery',$phone->battery ) !!}
    <br/>


    {!! Form::submit('送出') !!}
    {!! Form::close()!!}

    @include('errors.list')

@stop



           