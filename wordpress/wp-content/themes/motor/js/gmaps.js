(function($) {

	function motor_new_map( $el ) {
		var $markers = $el.find('.marker');
		var args = {
			zoom		: $markers.data('zoom'),
			scrollwheel: false,
			center		: new google.maps.LatLng(0, 0),
			mapTypeId	: google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map( $el[0], args);
		map.markers = [];
		$markers.each(function(){
			motor_add_marker( $(this), map );
		});
		motor_center_map( map );
		return map;
	}
	function motor_add_marker( $marker, map ) {
		var latlng = new google.maps.LatLng( $marker.attr('data-ltd'), $marker.attr('data-lgt') );
		var marker = new google.maps.Marker({
			position	: latlng,
			icon: $marker.data('marker'),
			map			: map
		});
		map.markers.push( marker );
		if( $marker.html() )
		{
			var infowindow = new google.maps.InfoWindow({
				content		: $marker.html()
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open( map, marker );
			});
		}
	}

	function motor_center_map( map ) {
		var bounds = new google.maps.LatLngBounds();
		$.each( map.markers, function( i, marker ){
			var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
			bounds.extend( latlng );
		});
		if( map.markers.length == 1 )
		{
			map.setCenter( bounds.getCenter() );
			map.setZoom( 16 );
		}
		else
		{
			map.fitBounds( bounds );
		}
	}

	var map = null;
	$(document).ready(function(){
		$('.motor-gmap').each(function(){
			map = motor_new_map( $(this) );
		});
	});

})(jQuery);