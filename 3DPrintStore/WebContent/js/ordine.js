var username;
var marker;
var selected_marker;
var mymap;
var user_location;

$(document).ready(function(){
	$("#mapid").css("height", "500px");
	mymap = L.map('mapid').setView([39.3621358, 16.2263], 12);

	L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiZG9vbWluYXRvcjk2IiwiYSI6ImNqcXpmc2ptbjAyZnU0NG1tMWliZ2U4aHAifQ.69_g0vnKd5cqQVpKyuZVAQ', {
	    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
	    maxZoom: 18,
	    id: 'mapbox.streets',
	    accessToken: 'your.mapbox.access.token'
	}).addTo(mymap);
});



