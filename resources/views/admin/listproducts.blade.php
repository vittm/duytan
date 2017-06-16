@extends('layout.admin')
@section('content')
<div class="row">
<div class="col-md-4">
<a href="{{ url('/admin/add-products') }}">
                      <h5>Thêm bài viết</h5>
                  </a>
</div>
<div class="col-md-12">
@foreach($products as $key => $value)
  <div class="col-sm-6 col-md-3">
    <div class="thumbnail thumbnail__list">
      <img src="{{ URL::to('img')}}/{{ json_decode($value->images)[0] }} ">
      <div class="caption">
        <h4>{{ substr($value-> name,0,50)}}</h4>
        <p><a href="{{ URL::to('/admin/edit-products') }}-{{$value->id}}" class="btn btn-primary" role="button">Chỉnh Sửa</a> <a href="{{ URL::to('/admin/destroy') }}-{{$value->id}} " class="btn btn-default" role="button">Xóa</a></p>
      </div>
    </div>
  </div>
@endforeach
</div>
<div class="col-md-12">
	<nav class="in">
	<?php echo $products->render(); ?>
	</nav>
</div>
</div>


@stop
