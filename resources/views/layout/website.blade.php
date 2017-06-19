<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Welands</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="{{ url('css/styles.css')}}">  <!-- Link css tự style -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.css')}}"> <!-- link css font-face -->
  <link rel="stylesheet" type="text/css" href="{{ asset('css/font-awesome.css')}}"> <!-- link css font-face -->

  <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
  <link rel="icon" href="{{ asset('img')}}/{{ $itemhome['2']->img }}" type="image/png">
</head>
<body>
<header>
	<div class="col-md-12 pd0" style="background: #085da1;">
		<div class="container" style="background: #085da1;">
		<p class="wel" style="margin-bottom:0;font-size: 13px;padding:5px;">Số 88 Đường số 3, Khu dân cư Vĩnh Lộc, Phường Bình Hưng Hòa B, Quận Bình Tân, Thành phố Hồ Chí Minh</p>
	</div>
	</div>
<div class="padding--lr0">
  <br>
	<div class="col-md-12 pd0" style="background:#3f51b5">
		<div class="container" style="background:#3f51b5">
   <div class="col-md-2">
		 <a class="col-md-12 logo" href="#"><img src="{{ asset('img/slide') }}/{{ $logo[0]->logo }}" width="200"></a>
	 </div>
	 <div class="col-md-8 text-center">
		 	<h4 class="wel top15">CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG THƯƠNG MẠI</h4>
			<h1 class="wel">DUY TÂN</h1>
	 </div>
	 <div class="col-md-2">
		 <h4 class="wel  top30 text-center"> 012234667534 </h4>
		 <a class="wel text-center" href="{{ App\Texts::printText(2) }}">
	 			<img id="LnkBr1image1gb0imageimage" alt="" src="{{ asset('img') }}/facebook-black-social-button-circle.svg" style="width:19px;height:19px;object-fit:cover;margin:auto 15px;">
	 	</a>
		<a class="wel" href="{{ App\Texts::printText(4) }}">
			 <img id="LnkBr1image1gb0imageimage" alt="" src="{{ asset('img') }}/twitter-social-logotype.svg" style="width:19px;height:19px;object-fit:cover;margin:auto 15px;">
	 </a>
	 <a class="wel" href="{{ App\Texts::printText(3) }}">
			<img id="LnkBr1image1gb0imageimage" alt="" src="{{ asset('img') }}/gmail.svg" style="width:19px;height:19px;object-fit:cover;margin:auto 15px;">
	</a>
	 </div>
 </div>
 </div>
   <nav class="container navbar navbar-default clb">
      <div class="padding--lr0 clb">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse clb	" aria-expanded="false" >
          <ul class="nav navbar-nav menu col-md-12 padding--lr0 ">
          @foreach( $nav as $menu)
            <li><a href="{{url('/')}}/{{$menu->url}}">{{ $menu -> name }}</a>

						</li>
          @endforeach
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
   </div>
</header>

<main>
	<div class="main ">
    	@yield('content')
    </div>
</main>
<div class="col-md-12">
	<div class="top30"></div>
	<a href="http://facebook.com/weland.vn">
	<img id="LnkBr1image1gb0imageimage" alt="" src="https://static.wixstatic.com/media/ed86bdfa6aecf88649d305e11d76ac33.wix_mp/v1/fill/w_38,h_38,al_c,q_80,usm_0.66_1.00_0.01/ed86bdfa6aecf88649d305e11d76ac33.wix_mp" style="width:19px;height:19px;object-fit:cover;float:right;margin-bottom:15px;">
	</a>
	<p class="col-md-12 padding--lr0 bt1 pd15 text-right">{{ App\Texts::printText(1) }}</p>
	</div>
</div>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script> <!-- Link thư viện jquery -->
<script type="text/javascript" src="js/jquery.slidizle.js"></script> <!-- Link thư viện jquery -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjrIAmsAiOUiDaImMJxtWlmlvhKMTbAIU&amp;libraries=geometry,places&amp;ext=.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>   <!--- Link jquery tự viết-->
<script type="text/javascript" src="js/bootstrap.js"></script>   <!--- Link jquery tự viết-->
<!-- mislider -->
<script src="js/mislider.js" type="text/javascript"></script>

<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 4,
				lazyLoad : true,
				autoPlay : true,
				pagination : false,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->


<script type="text/javascript">
        jQuery(function ($) {
            var slider = $('.mis-stage').miSlider({
                //  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
                stageHeight: 380,
                //  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
                slidesOnStage: false,
                //  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
                slidePosition: 'center',
                //  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
                slideStart: 'mid',
                //  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
                slideScaling: 150,
                //  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
                offsetV: -5,
                //  Center slide contents vertically - Boolean. Default: false
                centerV: true,
                //  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
                navButtonsOpacity: 1,
            });
        });
    </script>
<!-- //mislider -->


<script type="text/javascript">
$('.carosel-control-right').click(function(event) {
  $(this).blur();
  $(this).parent().find('.carosel-item').first().insertAfter($(this).parent().find('.carosel-item').last());
  event.preventDefault();
});
$('.carosel-control-left').click(function(event) {
  $(this).blur();
  $(this).parent().find('.carosel-item').last().insertBefore($(this).parent().find('.carosel-item').first());
  event.preventDefault();
});
$('.carosel-item').click(function(){
  var src= $(this).attr('src');
  $(this).parents('.carosel-inner').append('<div class="zoom-img"><a><img class="popupimg" src="'+src+'"></a></div>');
  $('.zoom-img').click(function(){
  $(this).hide();
});
});

</script>
</body>
</html>
