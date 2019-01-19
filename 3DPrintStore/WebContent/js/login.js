
//$(document).on("click", "#button", function() {   
//	$.ajax({
//		type:"POST",
//		url:'registrazionePrinter',
//		data:{
//			username:$('#login_username').val(),
//			password:$('#login_password').val(),
//			email:$('#login_email').val(),
//			lat:marker.getLatLng().lat,
//			lng:marker.getLatLng().lng
//		},
//	success:function(){
//		alert("success");
//	}
//	});
//});

var mymap = L.map('mapid').setView([39.3621358, 16.2263], 12);

L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiZG9vbWluYXRvcjk2IiwiYSI6ImNqcXpmc2ptbjAyZnU0NG1tMWliZ2U4aHAifQ.69_g0vnKd5cqQVpKyuZVAQ', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox.streets',
    accessToken: 'your.mapbox.access.token'
}).addTo(mymap);

var marker;

function onMapClick(e) {
	if(typeof(marker)==='undefined')
	 {
	  marker = new L.marker(e.latlng,{ draggable: true});
	  marker.addTo(mymap);        
	 }
	 else 
	 {
	  marker.setLatLng(e.latlng);         
	 }
	//marker=L.marker([e.latlng.lat,e.latlng.lng]).addTo(mymap);
//	mymap.removeLayer(marker);    
	$('#lat').val(marker.getLatLng().lat);
    $('#lng').val(marker.getLatLng().lng);
}

mymap.on('click', onMapClick);