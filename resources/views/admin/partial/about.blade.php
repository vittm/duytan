@extends('layout.admin')
@section('content')
<div class="row">
<div class="col-md-12">
<a class="btn" href="{{ url('/admin/add-about')}}">Thêm about</a> 
</div>
 
@foreach($abouts as $key => $value)
  <div class="col-sm-6 col-md-3 listing_about">
    <div class="thumbnail thumbnail__list">
      <img src="{{ url('/laravel/public/img/about') }}/{{ $value->img }} ">
      <div class="caption">
        <h4>{{ $value-> name }} </h4>
        <p><a href="{{ URL::to('/admin/edit-about') }}-{{$value->id}}" class="btn btn-primary" role="button">Chỉnh Sửa</a> <a href="{{ URL::to('/destroy-about') }}-{{$value->id}} " class="btn btn-default" role="button">Xóa</a></p>
      </div>
    </div>
  </div>
@endforeach
<div class="col-md-12">
	<nav class="in">
	<?php echo $abouts->render(); ?>
	</nav>
</div>
</div>


@stop
