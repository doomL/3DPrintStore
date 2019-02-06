// javascript Animate onscroll Start
$(document).ready(function() {
	if (screen.width > 1024) {
		AOS.init({
			easing : 'ease-in-out-sine',
			once : true,

		});
	}
	var user= document.getElementById('user').getAttribute("data-value");
	$.ajax({
		type:"GET",
		url:"https://cors-anywhere.herokuapp.com/https://api.coinhive.com/user/balance",
		data:{name:user,secret:"aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5"},
		success:function(result){
			document.getElementById("hashes").append(result.balance+" Disponibili / "+result.withdrawn+" Prelevati");
			console.log(result);
		}
		
	});
	
});

$('#recipeCarousel').carousel({
	interval : 5000
})

$('.portfolio .carousel .carousel-item').each(function() {
	var next = $(this).next();
	if (!next.length) {
		next = $(this).siblings(':first');
	}
	next.children(':first-child').clone().appendTo($(this));

	for (var i = 0; i < 2; i++) {
		next = next.next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}

		next.children(':first-child').clone().appendTo($(this));
	}
});
$(function() {
	$("input.decimal").bind("change keyup input", function() {
		var position = this.selectionStart - 1;
		// remove all but number and .
		var fixed = this.value.replace(/[^0-9\.]/g, "");
		if (fixed.charAt(0) === ".")
			// can't start with .
			fixed = fixed.slice(1);

		var pos = fixed.indexOf(".") + 1;
		if (pos >= 0)
			// avoid more than one .
			fixed = fixed.substr(0, pos) + fixed.slice(pos).replace(".", "");

		if (this.value !== fixed) {
			this.value = fixed;
			this.selectionStart = position;
			this.selectionEnd = position;
		}
	});

	$("input.integer").bind("change keyup input", function() {
		var position = this.selectionStart - 1;
		// remove all but number and .
		var fixed = this.value.replace(/[^0-9]/g, "");

		if (this.value !== fixed) {
			this.value = fixed;
			this.selectionStart = position;
			this.selectionEnd = position;
		}
	});
});
$(window).on('load', function(){
	$('iframe').contents().find('#cartBtn').click(function(){
		alert();
	})
})
function printPrice(){

	console.log(document.getElementById('iframe1').contentWindow.getElementById('price'));
}
let value;
function choose(choice){
    $.ajax({
    	type:"GET",
    	url:"pagamento",
    	data: {choice:choice},
    	success:function(result){
    		if(result!="OK"){
    			swal({
					type : 'error',
					title : 'Ti Mancano   '+result+ ' PrintCoin',
					confirmButtonText : 'Torna Indietro!',
					 

				})
    		}
    		else{
    		    value = choice;    
    		    localStorage.setItem("price",value);
    		    window.location.replace("payout.jsp");
    		}
    			
    	}
    });
}

function updateState(id){
	$.ajax({
		  type: "GET",
		  url: "aggiornaStato",
		  data: {id:id},
		  success: window.location.reload(),
		});
}
function updateStateOrd(id){
	$.ajax({
		  type: "POST",
		  url: "aggiornaStato",
		  data: {id:id},
		  success: window.location.reload(),
		});
}
function sendPayout(){
	var input = document.getElementById('email').value;
	$.ajax({
		type: "GET",
		url: "payout",
		data:{prezzo:localStorage.getItem("price"),email:input },
		success: function(result){
			swal({
				type : 'success',
				title : 'Richiesta Effettuata Con Successo!',
				confirmButtonText : 'Torna Alla DashBoard',
				 

			}).then(function(){
			    window.location.href = 'mostraOrdini';
			});
		},
		 error: function(){
			    alert('failure');
			  }
	});
}

function prelevaMonero(){
	var user= document.getElementById('user').getAttribute("data-value");
	var amount=1000; //10.000.000 hash = 1 printcoin
	$.ajax({
		type:"POST",
		url: "https://cors-anywhere.herokuapp.com/https://api.coinhive.com/user/withdraw",
		data:{name:user, amount:amount, secret:"aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5"},
		success:function(result){
			console.log(result);
			if(result.error=="insufficent_funds"){
				swal({
					type : 'error',
					title : 'Saldo Insufficiente!',
					confirmButtonText : 'Continua Con il Mining!',
					 

				})
				
			}
			if(result.success==true)
				swal({
					type : 'success',
					title : 'Conversione Effettuata!',
					confirmButtonText : 'Continua Con il Mining!',
					
					
				})
			$.ajax({
				type:"GET",
				url: "aggiornaSaldo",
				data:{hash:amount},
				success:function(result){
					console.log(result.json); 
				},
				error: function(xhr, status, error) {
			
				}
			});
		},
		error: function(xhr, status, error) {
			
			  			}
	});
	
	$.ajax({
		type:"GET",
		url:"https://cors-anywhere.herokuapp.com/https://api.coinhive.com/user/balance",
		data:{name:user,secret:"aecSQmjqUVBbHfwa6Ko6ARAKSVGy4MJ5"},
		success:function(result){
			document.getElementById("hashes").innerHTML=' ';
			document.getElementById("hashes").append(result.balance+" Disponibili / "+result.withdrawn+" Prelevati");
			console.log(result);
		}
		
	});
	
}


var mymap=null;
var marker;

function printerLoc(lat,lon,printer){
	if(mymap==null||mymap==undefined){
	mymap =L.map('map').setView([39.3621358, 16.2263], 8);

	L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiZG9vbWluYXRvcjk2IiwiYSI6ImNqcXpmc2ptbjAyZnU0NG1tMWliZ2U4aHAifQ.69_g0vnKd5cqQVpKyuZVAQ', {
	    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
	    maxZoom: 18,
	    id: 'mapbox.streets',
	    accessToken: 'your.mapbox.access.token'
	}).addTo(mymap);
	}
	alert(printer);
	if(typeof(marker)==='undefined')
	 {
	  marker = new L.marker([lat,lon]).bindPopup("<b>"+printer+"</b>").openPopup(); ;
	  marker.addTo(mymap);        
	  mymap.flyTo([lat, lon], 12);
	 }
	 else 
	 {
	  marker.setLatLng([lat,lon]).bindPopup("<b>"+printer+"</b>").openPopup();         
	  mymap.flyTo([lat, lon], 12);
	 }
	
}


