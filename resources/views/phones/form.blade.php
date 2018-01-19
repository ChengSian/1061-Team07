        <div class="form-group">
        {!! Form::label('brand_id', "品牌：") !!}
        <select name="brand_id">
	 @foreach($brands as $brand)
    
  <option value={{ $brand->id}}>{{ $brand->brand }}</option>
       
    @endforeach
		    </select>			
        <br/>
           
        </div> 
        <div class="form-group">
            {!! Form::label('Phone_name', "手機名稱：") !!}
            {!! Form::text('Phone_name', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('Colour', "顏色：") !!}
            {!! Form::text('Colour', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('Screen_size', "螢幕尺寸：") !!}
            {!! Form::text('Screen_size', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('Screen_resolution', "螢幕解析度：") !!}
            {!! Form::text('Screen_resolution', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('operating_system', "作業系統：") !!}
            {!! Form::text('operating_system', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('CPU', "中央處理器：") !!}
            {!! Form::text('CPU', null, ['class' => 'form-control']) !!} <br/>                   
        </div>
				<div class="form-group">
            {!! Form::label('RAM', "記憶體：") !!}
            {!! Form::text('RAM', null, ['class' => 'form-control']) !!} <br/>
        </div>
				<div class="form-group">
            {!! Form::label('ROM', "儲存空間：") !!}
            {!! Form::text('ROM', null, ['class' => 'form-control']) !!} <br/>
        </div>  
				<div class="form-group">
            {!! Form::label('SIM', "SIM卡：") !!}
            {!! Form::text('SIM', null, ['class' => 'form-control']) !!} <br/>
        </div>  
				<div class="form-group">
            {!! Form::label('MicroSD', "記憶卡：") !!}
            {!! Form::text('MicroSD', null, ['class' => 'form-control']) !!} <br/>
        </div>  
				<div class="form-group">
            {!! Form::label('Front_camera', "前相機：") !!}
            {!! Form::text('Front_camera', null, ['class' => 'form-control']) !!} <br/>
        </div>
					<div class="form-group">
            {!! Form::label('Main_camera', "主相機：") !!}
            {!! Form::text('Main_camera', null, ['class' => 'form-control']) !!} <br/>
        </div>  
					<div class="form-group">
            {!! Form::label('Communication_agreement', "通訊協定：") !!}
            {!! Form::text('Communication_agreement', null, ['class' => 'form-control']) !!} <br/>
        </div>  
				<div class="form-group">
            {!! Form::label('Link_web', "連結與網路：") !!}
            {!! Form::text('Link_web', null, ['class' => 'form-control']) !!} <br/>
        </div> 
				<div class="form-group">
            {!! Form::label('specification', "手機尺寸：") !!}
            {!! Form::text('specification', null, ['class' => 'form-control']) !!} <br/>
        </div>    
				<div class="form-group">
            {!! Form::label('Phone_weight', "手機重量：") !!}
            {!! Form::text('Phone_weight', null, ['class' => 'form-control']) !!} <br/>
        </div>              
        <div class="form-group">
            {!! Form::label('battery', "電池：") !!}
            {!! Form::text('battery', null, ['class' => 'form-control']) !!} <br/>
        </div>  

        <div class="form-group">
        {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
        </div>


        
		

            