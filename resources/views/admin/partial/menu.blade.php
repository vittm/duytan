@extends('layout.admin')

@section('content')
	<a href="{{ url('/admin/add-menu')}}">Add Menu</a>
	<table class="table table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Url</th>
            <th>Option</th>
        </tr>
    </thead>
    <tbody>
    @foreach( $menu as $value)
        <tr>
            <th scope="row">{{ $value->id }}</th>
            <td>{{ $value->name }}</td>
            <td>{{ $value->url }}</td>
            <td><a href="{{URL('/admin/show-edit-menu')}}-{{ $value->id }}">Edit</a> / <a href="{{URL('/admin/delete-menu')}}-{{ $value->id }}">Delete</a></td>
        </tr>
    @endforeach
    </tbody>
</table>	

@stop