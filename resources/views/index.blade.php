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
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="images/1.jpg" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
      <a class="item g1 popup-with-zoom-anim" href="#small-dialog">
        <img class="lazyOwl" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt="Veg Mores">
        <div class="agile-caption">
          <h4>Duis nec congue</h4>
          <span>Neque porro quisquam est qui dolorem </span>
        </div>
      </a>
    </div>
    <!-- //Owl-Carousel -->
    <h4 class="title-top"> Dự Án </h4>
    <div class="w3-agileitsline"></div>
    <h4 class="text-center"> Chúng tôi tự hào giới thiệu các công trình tiêu biểu </h4>
    <br>
    <div class="col-md-12">
      <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="card">
              <h4 class="card-title">Tawshif Ahsan Khan</h4>
              <img class="card-img-top" width="100%" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
              <p class="card-block">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum, dolorum asperiores, delectus dolore voluptatibus, at magnam nobis!
              </p>
          </div>
      </div>
    </div>
    <h4 class="title-top"> Kinh Doanh </h4>
    <div class="w3-agileitsline"></div>

<!-- welcome -->
<div class="welcome">
<!---728x90--->
  <div class="mis-stage w3_agileits_welcome_grids">
    <!-- The element to select and apply miSlider to - the class is optional -->
    <ol class="mis-slider">
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Strawberry</figcaption>
        </figure>
      </li>
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Orange</figcaption>
        </figure>
      </li>
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Pomegranates</figcaption>
        </figure>
      </li>
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Lemon</figcaption>
        </figure>
      </li>
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Kiwi Fruits</figcaption>
        </figure>
      </li>
      <li class="mis-slide">
        <figure>
          <img src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif" alt=" " class="img-responsive" />
          <figcaption>Apples</figcaption>
        </figure>
      </li>
    </ol>
  </div>
</div>
<!-- //welcome -->

<h4 class="title-top"> Tin tức </h4>
<div class="w3-agileitsline"></div>
<div class="col-md-6">
  <div class="col-md-12">
      <div class="card">
          <h4 class="card-title">Tawshif Ahsan Khan</h4>
          <img class="card-img-top" width="100%" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
          <p class="card-block">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum, dolorum asperiores, delectus dolore voluptatibus, at magnam nobis!
          </p>
      </div>
  </div>
</div>

<div class="col-md-6">
  <div class="col-md-12">
      <div class="col-md-6">
        <img class="card-img-top" width="100%" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
      </div>
      <div class="col-md-6">
          <h4 class="card-title">Tawshif Ahsan Khan</h4>
          <p class="card-block">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum, dolorum asperiores, delectus dolore voluptatibus, at magnam nobis!
          </p>
      </div>
  </div>
  <div class="col-md-12">
      <div class="col-md-6">
        <img class="card-img-top" width="100%" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
      </div>
      <div class="col-md-6">
          <h4 class="card-title">Tawshif Ahsan Khan</h4>
          <p class="card-block">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum, dolorum asperiores, delectus dolore voluptatibus, at magnam nobis!
          </p>
      </div>
  </div>
  <div class="col-md-12">
      <div class="col-md-6">
        <img class="card-img-top" width="100%" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
      </div>
      <div class="col-md-6">
          <h4 class="card-title">Tawshif Ahsan Khan</h4>
          <p class="card-block">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam velit quisquam veniam excepturi temporibus inventore corporis dicta sit culpa veritatis placeat earum, dolorum asperiores, delectus dolore voluptatibus, at magnam nobis!
          </p>
      </div>
  </div>
</div>
<h4 class="title-top"> Đối Tác </h4>
<div class="w3-agileitsline"></div>

<div class="contact"></div>
        <h4 class="top30">{{ App\Texts::printText(16) }}</h4>

        <div class="col-md-12 top15 padding--lr0">
            <div class="col-md-6 padding--lr0 top15">
                {{ App\Texts::printText(17) }}<br>
                {{ App\Texts::printText(18) }}<br>
                Email: <a style="color:#000000" href="tell:{{ App\Texts::printText(19) }}">{{ App\Texts::printText(19) }}</a><br>
                Tel: <a style="color:#000000" href="tell:{{ App\Texts::printText(20) }}">{{ App\Texts::printText(20) }}</a><br>
                {{ App\Texts::printText(21) }}<br>
            </div>
            <div class="col-md-6 pl0">
               <form autocomplete="on" action="{{ url('contact-submit') }}" enctype="multipart/form-data"  method="POST" onsubmit="" name="form_addproduct">
                 <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="text" name="name" class="input-contact" placeholder="Name">
                <input type="text" name="mail" class="input-contact" placeholder="Email">
                <input type="text" name="subject" class="input-contact" placeholder="Subject">
                <textarea class="content-contact" placeholder="Content" name="content"></textarea>
                <button class="sent-contact">Sent</button>
                </form>
            </div>
            <div class="col-md-6">

            </div>
        </div>
@stop
