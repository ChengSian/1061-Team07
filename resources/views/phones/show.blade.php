@extends('app')

@section('title', '手機資料')

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

        <td>狀態</td>
        
      </tr>
    
      <tr>       
        
       <td> 
       {{ $phone->brand_ID }}
			 @if (isset($phone->Brand))            
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

				<td><a href="{{ route('phones.destroy', ['id' => $phone->id])  }}">下架</a></td>				      
      </tr>

        </table>
@stop
