<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Welands</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="css/styles.css">  <!-- Link css tự style -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"> <!-- link css font-face -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.css"> <!-- link css font-face -->

  <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
  <link rel="icon" href="{{ URL::to('img')}}/{{ $itemhome['2']->img }}" type="image/png">
</head>
<body>
<header>
<div class="container padding--lr0">
  <br>
   <a class="col-md-12 logo" href="#"><img src="{{ URL::to('img/slide') }}/{{ $logo[0]->logo }}"></a>
   <nav class="navbar navbar-default">
      <div class="container padding--lr0">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
          <ul class="nav navbar-nav menu col-md-12 padding--lr0 ">
          @foreach( $nav as $menu)
            <li><a href="{{url('/')}}/{{$menu->url}}">{{ $menu -> name }}</a>
							@if($menu->sub_menu->count())
									{!! view('admin.partial.sub_menu', ['menus' => $menu->sub_menu]) !!}
							@endif
						</li>
          @endforeach
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
   </div>
</header>

<main>
  <div class="fullscreen-bg">
    <video loop muted autoplay poster="img/videoframe.jpg" class="fullscreen-bg__video">
        <source src="media/background.mp4" type="video/mp4">
    </video>
  </div>
	<div class="container main ">
    	@yield('content')
    </div>
</main>

<footer >
    <div class="container">
			<!-- END : FOOTER MENU-->
				 <section class="footer-map">
					 <div id="footer-map"></div>
					 <div class="box-info">
						 <h2 class="ttl">CỬA HÀNG MUA HÀNG HIỆU </h2>
						 <h3 class="add">81 TRẦN QUANG KHẢI, P. TÂN ĐỊNH, Q.1</h3><a href="tel:0908884868" class="map-tel"> <i class="ico-phone"></i>0908 884 868</a>
					 </div>
				 </section>
				 <!-- END : FOOTER MAP-->
    <div class="top30"></div>
    <a href="http://facebook.com/weland.vn">
    <img id="LnkBr1image1gb0imageimage" alt="" src="https://static.wixstatic.com/media/ed86bdfa6aecf88649d305e11d76ac33.wix_mp/v1/fill/w_38,h_38,al_c,q_80,usm_0.66_1.00_0.01/ed86bdfa6aecf88649d305e11d76ac33.wix_mp" style="width:19px;height:19px;object-fit:cover;float:right;margin-bottom:15px;">
    </a>
    <p class="col-md-12 padding--lr0 bt1 pd15 text-right">{{ App\Texts::printText(1) }}</p>
    </div>
</footer>
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
