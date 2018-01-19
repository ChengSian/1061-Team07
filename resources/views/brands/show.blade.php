@extends('app')

@section('title', '手機品牌')

@section('smartphones_contents')
        <table border='1' align='center' >
            <tr align='center'>
                
                <th>品牌</th>
                
                <th>操作</th>
                
            </tr>
        
            <tr>
                
                <td>{{ $brand->brand }}</a></td>
             
                <td>
                     <a href="{{ route('brands.destroy', ['id' => $brand->id])  }}">下架</a>
                </td>
            </tr>

        </table>
@stop
