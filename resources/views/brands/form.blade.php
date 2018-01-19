<div class="form-group">
    {!! Form::label('brand', "品牌：") !!}
    {!! Form::text('brand', null, ['class' => 'form-control']) !!} <br/>
</div>

<div class="form-group">
    {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
</div>
