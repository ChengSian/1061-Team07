@extends('app')

@section('title', '手機品牌')

@section('smartphones_contents')
    <table border='1' align='center'>
        <tr align='center'>

            <th>品牌</th>
            <th>操作</th>

        </tr>
        @forelse($brands as $brand)
            <tr>

                <td><a href="{{ route('brands.show', ['id' => $brand->id])  }}">{{ $brand->brand }}</a></td>
                <td>
                    <a href="{{ route('brands.edit', ['id' => $brand->id])  }}">編輯</a>
                </td>

            </tr>
        @empty
            <tr>
                目前沒有品牌資料
            </tr>
        @endforelse
    </table>
@stop
