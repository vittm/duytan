@extends('layout.website')

@section('content')
<div class="container">
@if($detail[0]->catelogy == 'tuyen-dung')
@foreach($detail as $value)
        <h4 class="bt13 title ">{{ $value -> name }}</h4>
        <div class="col-md-12 top30 padding--lr0">
        {!! $value->content !!}
        </div>
@endforeach
@else
	{{-- slider for the product --}}
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- progressbar -->
	    <section id="progressbar-slider" class="sample slider--animated" data-slidizle data-slidizle-loop="true" data-slidizle-timeout="3000" data-slidizle-pause-on-hover="true">
	      <ul class="slider-content" data-slidizle-content>
	      @foreach($detail as $key => $value)
	      	<?php $hi = array(json_decode($value->images,JSON_BIGINT_AS_STRING)) ?>
	      	@foreach( $hi[0] as $key => $img)
		        <li data-slidizle-slide-id="slide{{$key + 1}}" style="background-image:url('{{ URL::to('img')}}/{{ $img }}')">
		        </li>
	        @endforeach
	      @endforeach
	      </ul>

	      <div class="slider-next" data-slidizle-next>
	        <i class="fa fa-arrow-right"></i>
	      </div>
	      <div class="slider-previous" data-slidizle-previous>
	        <i class="fa fa-arrow-left"></i>
	      </div>

	      <div class="slider-progressbar"></div>

	      <ul class="slider-navigation" data-slidizle-navigation>
	        @foreach($detail as $key => $value)
	        <?php $hi = array(json_decode($value->images,JSON_BIGINT_AS_STRING)) ?>
	        @foreach( $hi[0] as $key => $img)
		        <li class="slider-navigation-item" data-slidizle-slide-id="slide{{$key + 1}}" style="background-image:url{{ URL::to('img')}}/ url('laravel/public/img/')}}/{{ $img }}')">
		        </li>
	        @endforeach
	        @endforeach
	      </ul>

	      <div class="slidizle-loading"> </div>
	    </section>
	    </div>

	<div class="col-md-12 group-title">
		<img src="{{ URL::to('img')}}/cityscape.png" >
		<p>Nội dung mô tả</p>
	</div>
	<div class="col-md-12">
	 {!! $value->content !!}
	</div>
@endif
</div>
@stop
