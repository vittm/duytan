@extends('layout.admin')
@section('content')
<div class="row">
<div class="col-md-12">
</div>

@foreach($item as $key => $value)
  <div class="col-sm-6 col-md-3 listing_about">
    <div class="thumbnail thumbnail__list">
      <img src="{{ URL::to('img/') }}/{{ $value->img }} ">
      <div class="caption">
        <p><a href="{{ URL::to('/admin/edit-item') }}-{{$value->id}}" class="btn btn-primary" role="button">Chỉnh Sửa</a></p>
      </div>
    </div>
  </div>
@endforeach
</div>


@stop
