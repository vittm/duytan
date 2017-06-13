@extends('layout.admin')
@section('content')
<div class="row">
<div class="col-md-12">
  <p>Name : {{ $mess[0]->name }}</p>
  <p>Email : {{ $mess[0]->email }}</p>
  <p>Subject : {{ $mess[0]->subject }}</p>
  <p>Content : {{ $mess[0]->mess }}</p>
  </div>
</div>
@stop
