var ContactUs = function () {

    return {
        //main function to initiate the module
        init: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				div: '#map',
				lat: 21.016989,
				lng: 105.784164
			  });
			   var marker = map.addMarker({
		            lat: 21.016989,
					lng: 105.784164,
		            title: 'FPT Information System',
		            infoWindow: {
		                content: "<b>FPT Information System</b> <br/> 21st floor Keangnam Landmark Tower<br>Hanoi, Vietnam"
		            }
		        });

			   marker.infoWindow.open(map, marker);
			});
        }
    };

}();