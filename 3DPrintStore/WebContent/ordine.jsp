<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css"
   integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
   crossorigin=""/>
   <!-- Make sure you put this AFTER Leaflet's CSS -->
 <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"
   integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg=="
   crossorigin=""></script> 

  <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">Stampa</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Scegli la copisteria</h2>
                 </div>  
              </div>
          </div>
    </header>
<div class="col-sm-12" id="place">

<body>

<br>
<div class="container">
	<h2 style="text-align: center">Seleziona copisteria</h2>
	<br>
	<div id="mapid"></div>
</div>
	
<br>
<br>

<div class="container">
	<h2 style="text-align: center">Info stampa</h2>      
	<br>    
	<table class="table table-condensed">
		<tbody>
			<tr>
		   		<td>Prezzo calcolato:</td>
		    	<td>${prezzo} printcoins</td>
	   		</tr>
	   		<tr>
		   		<td>Materiale:</td>
		    	<td>${materiale}</td>
	   		</tr>
	   		<tr>
				<td>Colore:</td>
			    <td>${colore}</td>
   			</tr>
	  		<tr>
	    		<td>Lunghezza:</td>
	     		<td>${lunghezza} %</td>
	   		</tr>
	  		<tr>
	     		<td>Larghezza:</td>
	     		<td>${larghezza} %</td>
	   		</tr>
	  		<tr>
		   		<td>Altezza:</td>
		     	<td>${altezza} %</td>
	   		</tr>
 		</tbody>
	</table>
</div>

<script type="text/javascript">
	var marker;
	var mymap;
	
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
</script>


<c:forEach items="${printers}" var="p">
	<script type="text/javascript">
		$(document).ready(function() {
			marker = new L.marker([
				${p.latitudine}, 
				${p.longitudine}
			]);
			marker.addTo(mymap);
		});
	</script>
</c:forEach>

</body>

<div id="myDiv"></div>
<br>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>