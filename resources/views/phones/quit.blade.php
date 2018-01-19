@extends('app')

@section('title', '下架手機')

@section('smartphones_contents')
       <!-- <table class="flex-center position-ref">-->
    <table border='1' align='center'>
			<tr align='center' >
	      
	      <td>品牌</td>
	      <td>手機名稱</td>
        <td>顏色</td>
        <td>螢幕尺寸</td>
        <td>螢幕解析度</td>
        <td>作業系統</td>
        <td>中央處理器</td>
        <td>記憶體</td>
        <td>儲存空間</td>
        <td>SIM卡</td>
	      <td>記憶卡</td>
        <td>前相機</td>
        <td>主相機</td>
        <td>通訊協定</td>
        <td>連結與網路</td>
        <td>手機尺寸</td>
        <td>手機重量</td>
        <td>電池</td>
        <td>操作</td>
        <td>刪除</td>

        
      </tr>
    @forelse($phones as $phone)
      <tr>       
        
       <td> 
       {{ $phone->brand_ID }}
			 @if (isset($phone->brand))            
						{{ $phone->Brand->brand }}
       @else
            無
       @endif
				</td>
				<td>{{ $phone->Phone_name  }}</td>
				<td>{{ $phone->Colour }}</td>
				<td>{{ $phone->Screen_size  }}</td>
				<td>{{ $phone->Screen_resolution  }}</td>
				<td>{{ $phone->operating_system }} </td>
				<td>{{ $phone->CPU }}</td>
				<td>{{ $phone->RAM }}</td>
				<td>{{ $phone->ROM }}</td>
				<td>{{ $phone->SIM }}</td>
        <td>{{ $phone->MicroSD }}</td>
				<td>{{ $phone->Front_camera  }}</td>
				<td>{{ $phone->Main_camera  }}</td>
				<td>{{ $phone->Communication_agreement  }}</td>
				<td>{{ $phone->Link_web  }}</td>
				<td>{{ $phone->specification }}</td>
				<td>{{ $phone->Phone_weight  }}</td>
				<td>{{ $phone->battery }}</td>
				<td><a href="{{ route('phones.restore', ['id' => $phone->id])  }}">上架</a></td>	
				<td><a href="{{ route('phones.delete', ['id' => $phone->id])  }}">刪除</a></td>				      
      </tr>
      @empty
          <tr>
              目前沒有手機資料
          </tr>
     @endforelse
        </table>
@stop
