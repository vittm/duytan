@extends('layout.admin')
@section('content')
<div class="row">
<div class="col-md-12">
<a class="btn" href="{{ url('/admin/add-slide')}}">Thêm slide</a> 
</div>
 
@foreach($slides as $key => $value)
  <div class="col-sm-6 col-md-3 listing_about">
    <div class="thumbnail thumbnail__list">
      <img src="{{ url('laravel/public/img/slide') }}/{{ $value->img }} ">
      <div class="caption">
        <p><a href="{{ URL::to('/admin/edit-slide') }}-{{$value->id}}" class="btn btn-primary" role="button">Chỉnh Sửa</a> <a href="{{ url('/destroy-slide')}}-{{ $value->id }}" class="btn" type="submit"> Xóa </a></p>
      </div>
    </div>
  </div>
@endforeach
<div class="col-md-12">
	<nav class="in">
	<?php echo $slides->render(); ?>
	</nav>
</div>
</div>


@stop
