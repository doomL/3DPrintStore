<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://unpkg.com/sweetalert2@7.12.12/dist/sweetalert2.all.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css"
   integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
   crossorigin=""/>
   <!-- Make sure you put this AFTER Leaflet's CSS -->
 <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"
   integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg=="
   crossorigin=""></script> 
<script src="js/ordine.js"></script>

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
	   		<tr>
		   		<td>Riempimento:</td>
		     	<td>${riempimento} %</td>
	   		</tr>
 		</tbody>
	</table>	
	<br>
	<button type="submit" id="confirm-order" class="btn btn-success active" style="margin-left: auto; margin-right: auto; display: block; width: 100%" onclick="confirmOrder()">Conferma</button>
</div>

<script type="text/javascript">
	
</script>


<c:forEach items="${printers}" var="p">
	<script type="text/javascript">
		$(document).ready(function() {
			marker = new L.marker([
				${p.latitudine }, 
				${p.longitudine }
				]);
			
			marker.addTo(mymap);
			marker.bindPopup("<p><b>Username: </b>${p.userName}</p><p><b>Email: </b>${p.email}</p><p><b>Stampanti: </b>${p.numStampanti}</p>").openPopup();			
		});
	</script>
</c:forEach>

</body>

<script>
function confirmOrder() {
	
	mymap.eachLayer(function(layer){
		if(layer.isPopupOpen())
			selected_marker = layer;
	});
	
	if(selected_marker == null)  {
		swal({
			type: 'error',
		  	title: 'Oops...',
		  	text: 'Devi selezionare una copisteria',
		  	confirmButtonText: 'Riprova'
		})
	} else if( ${not loggato})  {
		swal({
			type: 'error',
		  	title: 'Oops...',
		  	text: 'Devi avere effettuato il login per poter completare l\'ordine',
		  	confirmButtonText: 'Login'
		}).then((result) => {
			if (result.value) {
				window.location = "login.jsp";
			}
		})
	} else if(${utente.saldo } < ${prezzo })  {
		swal({
			type: 'error',
		  	title: 'Oops...',
		  	text: 'I tuoi printcoin non sono sufficienti per l\'acquisto',
		  	confirmButtonText: 'Compra printcoin'
		}).then((result) => {
			if (result.value) {
				window.location = "printcoin.jsp";
			}
		})
	}
	else  {
		printername = selected_marker.getPopup().getContent();
		printername = printername.substr(20);
		var end_pos = printername.indexOf("</p><p><b>Email:");
		printername = printername.slice(0, end_pos);
		
		$.post(
			"ordineConfermato", 
			{
				utente_username: "${utente.userName}",
				prezzo: "${prezzo}",
				printer_username: printername,
				materiale: "${materiale}",
				file_name: "${fileName }",
				riempimento: "${riempimento}"
			},
			function()  {
				swal({
					type: 'success',
				  	title: 'Ordine confermato',
				  	text: 'Controllalo nella dashboard',
				  	confirmButtonText: 'Dashboard'
				}).then((result) => {
					window.location = "mostraOrdini";
				})
			}
		);
	}
}
</script>

<div id="myDiv"></div>
<br>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>