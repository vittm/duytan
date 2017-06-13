@extends('layout.website')

@section('content')
      <h4 class="bt13 title ">@foreach( $category as $cate) @if( $nameCategory == $cate->slug ) {{ $cate->name}} @endif @endforeach</h4>
         @foreach( $project as $value)
          <div  class="col-md-12 top30 padding--lr0">
          <div class="col-md-4 pl0">
			     <div class="carosel" id="carosel1">
              <a class="carosel-control carosel-control-left fa fa-angle-left" href="#"></a>
              <div class="carosel-inner">
              <?php $hi = array(json_decode($value->images,JSON_BIGINT_AS_STRING)) ?>
              <img class="carosel-item" src="{{ url('laravel/public/img/')}}/{{ $hi[0][0] }}" height="200" />
              </div>
              <a class="carosel-control carosel-control-right fa fa-angle-right" href="#"></a>
            </div>
              
          </div>
          <a href="{{ url('chi-tiet') }}-{{ $value->slug }}" class="col-md-8 title-listing">
            <h4>{{ $value->name }}</h4>
            <p>{!! $value->summary !!}</p>
          </a>
      </div>
      @endforeach
@stop