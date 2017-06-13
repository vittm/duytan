@extends('layout.website')

@section('content')
<div class="about"></div>
        <h4 class="bt13 title ">About</h4>

        <h5 class="comment">{{ App\Texts::printText(7) }}</h5>
        <h5 class="comment">{{ App\Texts::printText(8) }}</h5>
        <div class="col-md-12 bt1 top30 padding--lr0">
            <div class="col-md-12 top30 padding--lr0">
            @foreach($abouts as $value)
                <a href="{!! $value->content !!}" class="col-md-6 box-profile">
                  <div class="col-md-12 padding--lr0 background-box">
                    <div class="col-md-4 padding--lr0">
                      <img class="img-reponsive" src="{{ URL::to('laravel/public/img/about')}}/{{ $value->img }}" width="140" height="140">
                    </div>
                    <div class="col-md-8 title_box padding--lr0">
                      {{ $value->name}}
                    </div>
                  </div>
                </a>
            @endforeach
            </div>
        </div>
@stop