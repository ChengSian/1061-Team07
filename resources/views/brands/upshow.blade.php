@extends('app')

@section('title', '上架品牌')

@section('smartphones_contents')
        <table border='1' align='center' >
            <tr align='center'>
                
                <th>品牌</th>
                <th>檢視</th>
                <th>操作</th>
                
            </tr>
         @forelse($brands as $brand)
            <tr>
                <td>{{ $brand->brand }}</td>
                <td>
                   <a href="{{ route('brands.showb', ['id' => $brand->id])  }}">檢視</a>
                </td>
                <td>
                     <a href="{{ route('brands.destroy', ['id' => $brand->id])  }}">下架</a>
                </td>
            </tr>
         @empty
            <tr>
                目前沒有品牌資料
            </tr>
        @endforelse
        </table>
@stop
