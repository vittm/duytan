@extends('layout.website')

@section('content')
<div class="home"></div>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- progressbar -->
    <section id="progressbar-slider" class="sample slider--animated" data-slidizle data-slidizle-loop="true" data-slidizle-timeout="3000" data-slidizle-pause-on-hover="true">
      <ul class="slider-content" data-slidizle-content>
      @foreach($slides as $key => $value)
        <li data-slidizle-slide-id="slide{{$key + 1}}" style="background-image:url('{{ URL::to('img/slide')}}/{{ $value->img }}')">
          <header>
            <h2 class="title-slider">{{ $value->title_big }}</h2>
            <h3 class="title-slider">{{ $value->title_small }}</h3>
          </header>
        </li>
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
        @foreach($slides as $key => $value)
        <li class="slider-navigation-item" data-slidizle-slide-id="slide{{$key + 1}}" style="background-image:url('{{ url('laravel/public/img/slide')}}/{{ $value->img}}')">
        </li>
        @endforeach
      </ul>

      <div class="slidizle-loading"> </div>
    </section>
</div>
<h4 class="title-top"> Dịch Vụ </h4>
<div class="w3-agileitsline"></div>
<!-- Owl-Carousel -->
    <div id="owl-demo" class="owl-carousel text-center">
      @foreach($service as $value)
      <a class="item g1 popup-with-zoom-anim" href="{{$value->slug}}">
        <img class="lazyOwl" src="{{ URL::to('img')}}/{{$value->img}}" alt="{{$value->slug}}">
        <div class="agile-caption">
          <h4>{{$value->name}}</h4>
          <span>{{$value->content}}</span>
        </div>
      </a>
      @endforeach
    </div>
    <!-- //Owl-Carousel -->
    <div class="col-md-12">
    <h4 class="title-top"> Dự Án </h4>
    <div class="w3-agileitsline"></div>
    <h4 class="text-center"> Chúng tôi tự hào giới thiệu các công trình tiêu biểu </h4>
    <br>
      @foreach($project as $value)
      <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="card">
              <h4 class="card-title text-center">{{$value->name}}</h4>
              <img class="card-img-top" width="100%" src="{{ URL::to('img')}}/{{$value->img}}">
              <p class="card-block top15">
                  {{$value->content}}
              </p>
          </div>
      </div>
      @endforeach
    </div>

<div class="col-md-12">
<h4 class="title-top"> Kinh Doanh </h4>
<div class="w3-agileitsline"></div>

<!-- welcome -->
<div class="welcome">
<!---728x90--->
  <div class="mis-stage w3_agileits_welcome_grids">
    <!-- The element to select and apply miSlider to - the class is optional -->
    <ol class="mis-slider">
      @foreach($business as $value)
      <li class="mis-slide">
        <figure>
          <img src="{{ URL::to('img')}}/{{$value->img}}" alt=" " class="img-responsive" />
          <figcaption class="top15">{{$value->name}}</figcaption>
        </figure>
      </li>
      @endforeach
    </ol>
  </div>
</div>
</div>
<!-- //welcome -->
<div class="col-md-12 pd0 top30">
<h4 class="title-top"> Tin tức </h4>
<div class="w3-agileitsline"></div>
<div class="col-md-6 top30">
  @foreach ($news as $value)
  <a class="footer-news" href="{{ URL::to('chi-tiet')}}-{{$value->slug}}" class="col-md-12">
      <div class="card">
          <?php $hi = array(json_decode($value->images,JSON_BIGINT_AS_STRING)) ?>
          <img class="card-img-top" width="100%" src="{{ URL::to('img')}}/{{ $hi[0][0] }}">
          <h4 class="card-title">{{$value->name}}</h4>
          <p class="card-block">
              {{$value->summary}}
          </p>
      </div>
  </a>
  @endforeach
</div>

<div class="col-md-6">
    @foreach ($news2 as $value)
  <a href="{{ URL::to('chi-tiet')}}-{{$value->slug}}" class="col-md-12 top15">
      <div class="col-md-6">
        <?php $hi = array(json_decode($value->images,JSON_BIGINT_AS_STRING)) ?>
        <img class="card-img-top" width="100%" src="{{ URL::to('img')}}/{{ $hi[0][0] }}">
      </div>
      <div class="col-md-6">
          <h4 class="card-title">{{$value->name}}</h4>
          <p class="card-block">
              {{$value->summary}}
          </p>
      </div>
  </a>
  @endforeach
</div>
</div>
<div class="col-md-12">
  <h4 class="title-top top30"> Đối Tác </h4>
  <div class="w3-agileitsline"></div>
  <div class="container top30 clb">
  @foreach($partner as $key => $value)
    <div class="col-md-2">
      <a href="{{$value->url}}"><img class="card-img-top" width="100%" src="{{ URL::to('img')}}/{{ $value->img }}"></a>
    </div>
  @endforeach
  </div>
</div>
<br>
<br>
<div class="col-md-12 pd0 top30" style="background:#2f2f2f;">
  <div class="container pd0" style="background:#2f2f2f;"> <h4 class="title-top">Liên Hệ </h4>
  <div class="w3-agileitsline"></div>
  <div class="contact"></div>
              <div class="col-md-6 padding--lr0 top15">
                  <h4 class="wel">{{ App\Texts::printText(16) }}</h4>
                  <p class="wel">{{ App\Texts::printText(17) }}<br>
                  {{ App\Texts::printText(18) }}<br></p>
                  <span class="wel">Email: </span> <a class="wel" href="tell:{{ App\Texts::printText(19) }}">{{ App\Texts::printText(19) }}</a><br>
                  <span class="wel">Tel: </span> <a class="wel" href="tell:{{ App\Texts::printText(20) }}">{{ App\Texts::printText(20) }}</a><br>
                  {{ App\Texts::printText(21) }}<br>
              </div>
              <div class="col-md-6 pl0">
                <h4 class="top15 wel">Tin Nhắn</h4>
                 <form autocomplete="on" action="{{ url('contact-submit') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">
                   <input type="hidden" name="_token" value="{{ csrf_token() }}">
                  <input type="text" name="name" class="input-contact form-control" placeholder="Họ và Tên">
                  <input type="text" name="mail" class="input-contact form-control" placeholder="Email">
                  <input type="text" name="subject" class="input-contact form-control" placeholder="Tiêu đề">
                  <textarea class="content-contact form-control" placeholder="Nội dung" name="content"></textarea>
                  <button class="sent-contact top15">Gửi</button>
                  </form>
              </div>
              <div class="col-md-6">

              </div>

  </div>
</div>
            <div class="col-md-12 pd0 top30">
        			<!-- END : FOOTER MENU-->
        				 <section class="footer-map">
        					 <div id="footer-map"></div>
        					 <div class="box-info">
        						 <h2 class="ttl">CÔNG TY DUY TÂN </h2>
        						 <h3 class="add">Số 88 Đường số 3, Khu dân cư Vĩnh Lộc, Phường Bình Hưng Hòa B, Quận Bình Tân, Thành phố Hồ Chí Minh</h3><a href="tel:0908884868" class="map-tel"> <i class="ico-phone"></i>086 6832 446</a>
        					 </div>
        				 </section>
        				 <!-- END : FOOTER MAP-->


@stop
