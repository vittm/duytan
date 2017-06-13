@extends('layout.admin')

@section('content')
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
    @foreach( $contact as $value)
        <tr>
            <th scope="row">{{ $value->id }}</th>
            <td>{{ $value->name }}</td>
            <td>{{ $value->email }}</td>
            <td><a href="{{ url('/admin/detail-message')}}-{{$value->id}}">Message Detail</a></td>
        </tr>
      @endforeach
    </tbody>
</table>	

@stop