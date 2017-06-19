			// setup slidizle
$('[data-slidizle]').slidizle({
    beforeChange : function(api) {
        console.log('previous', api.getPreviousSlide().index());
        console.log('current', api.getCurrentSlide().index());
        console.log('next', api.getNextSlide().index());
        console.log('previous active', api.getPreviousActiveSlide().index());
    }
});

var $slider = $('#progressbar-slider');
	// $slider.slidizle();
	var $progressbar = $slider.find('.slider-progressbar');
		api = $slider.data('slidizle_api');

	$slider.bind('slidizle.change', function(e, api) {
		console.log('change');
		$progressbar.stop().css('width', 0);
	});
	$slider.bind('slidizle.pause', function(e, api) {
		$progressbar.stop();
		console.log('timer pause', api.getCurrentTimeout(), api.getTotalTimeout(), api.getRemainingTimeout());
	});
	$slider.bind('slidizle.play slidizle.resume slidizle.change', function(e, api) {
		console.log('timer start', api.getCurrentTimeout(), api.getTotalTimeout(), api.getRemainingTimeout());

		// do nothing is is hover
		if (api.isHover()) return;

		// manage progressbar :
		$progressbar.animate({
			width : '100%'
		}, api.getRemainingTimeout());
	});

	activeMenu('home', 'menu > li:nth-child(1) > a');
	activeMenu('about', 'menu > li:nth-child(2) > a');
	activeMenu('service', 'menu > li:nth-child(3) > a');
	activeMenu('office', 'menu > li:nth-child(4) > a');
	activeMenu('contact', 'menu > li:nth-child(6) > a');

	function activeMenu( name, location ) {
		$('.main').children('.' + name).each(function() {
			$('.' + location).addClass('bt3');
		});
	}

  /**
 * 1. Load map
 */
function mapLoad() {
    if(!$('#footer-map').length) { return; }

    // Google maps on front page
    function mapOption(zoom, type, draggable, scrollwheel) {
        return map_options = {
            center: new google.maps.LatLng(10.79221,106.6912683),
            zoom: 16,
            panControl: false,
            zoomControl: false,
            scaleControl: false,
            navigationControl: false,
            mapTypeControl: false,
            overviewMapControl: false,
            streetViewControl: false,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: [{
                "featureType": "landscape",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 65
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "poi",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 51
                }, {
                    "visibility": "off"
                }]
            }, {
                "featureType": "road.highway",
                "stylers": [{
                    "saturation": -100
                }, {
                    "visibility": "simplified"
                }]
            }, {
                "featureType": "road.arterial",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 30
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "road.local",
                "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 40
                }, {
                    "visibility": "on"
                }]
            }, {
                "featureType": "transit",
                "stylers": [{
                    "saturation": -100
                }, {
                    "visibility": "simplified"
                }]
            }, {
                "featureType": "administrative.province",
                "stylers": [{
                    "visibility": "off"
                }]
            }, {
                "featureType": "water",
                "elementType": "labels",
                "stylers": [{
                    "visibility": "on"
                }, {
                    "lightness": -25
                }, {
                    "saturation": -100
                }]
            }, {
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [{
                    "hue": "#ffff00"
                }, {
                    "lightness": -25
                }, {
                    "saturation": -97
                }]
            }]
        }
    }

    var mapCanvas = document.getElementById('footer-map');

    if (mapCanvas) {
        var map_obj = new google.maps.Map(mapCanvas, mapOption(16, 16, true, true));
        var pinColor = "9e9e9e";
        var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
            new google.maps.Size(21, 34),
            new google.maps.Point(0,0),
            new google.maps.Point(10, 34));

        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(10.79221,106.6912683),
            icon: pinImage
        });

        marker.setMap(map_obj);

        google.maps.event.addDomListener(window, "resize", function() {
            var center = map_obj.getCenter();
            google.maps.event.trigger(map_obj, "resize");
            map_obj.setCenter(center);
        });
    };
}
