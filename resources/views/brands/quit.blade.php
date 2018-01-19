@extends('app')

@section('title', '下架品牌')

@section('smartphones_contents')
    <table border='1' align='center'>
        <tr align='center'>

            <th>品牌</th>
            <th>操作</th>
            <th>刪除</th>
        </tr>
        @forelse($brands as $brand)
            <tr>

                <td>{{ $brand->brand }}</td>
                <td>
                    <a href="{{ route('brands.restore', ['id' => $brand->id])  }}">上架</a>
                </td>
                <td>
                    <a href="{{ route('brands.delete', ['id' => $brand->id])  }}">刪除</a>
                </td>
            </tr>
        @empty
            <tr>
                目前沒有品牌資料
            </tr>
        @endforelse
    </table>
@stop
