<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">Stampa</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Calcola il prezzo</h2>
                 </div>  
              </div>
          </div>
    </header>
<div class="col-sm-12" id="place">
<br>
<!-- <iframe src="http://www.3dabax.com/calc/vendor/2" style="height:1200px;width:100%;border:none;overflow:hidden;"></iframe> -->
  <!--  <iframe id="iframe1" name="iframe1" src="https://cors-escape.herokuapp.com/https://www.3dabax.com/calc/index.php?vendor=179"  height="700px"  width="100%" allowtransparency="true" allowFullScreen="true" frameBorder="0"></iframe>-->
 <!-- <iframe id="iframe1" name="iframe1" target="config.php?vendor=179"  height="700px"  width="100%" allowtransparency="true" allowFullScreen="true" frameBorder="0"></iframe> --> 
<script>
function loadXMLDoc()
{
	var price = 0;
	var x = new XMLHttpRequest();
	x.open('GET', 'https://cors-anywhere.herokuapp.com/https://www.3dabax.com/calc/index.php?vendor=179');
	// I put "XMLHttpRequest" here, but you can use anything you want.
	x.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
	x.onload = function() {
	    alert(x.responseText);
	$( ".myDiv" ).append( x.responseText );
	};
	x.send();
}
</script>

<script type="text/javascript">
	var size_for_price = 0;
	var price = 0;
	
	function calculatePrice() {
	    price = size_for_price; 
	    
	    if($('#material').val() == "PLA - PLUS - 200 microns")
	    	price *= 2;
	    else if($('#material').val() == "PLA - HIGH - 100 microns")
	    	price *= 12;
	    else if($('#material').val() == "PLA - ULTRA - 50 microns")
	    	price *= 15;
	    else if($('#material').val() == "ABS - PLUS - 200 microns")
	    	price *= 3;
	    else if($('#material').val() == "ABS - HIGH - 100 microns")
	    	price *= 20;
	    else if($('#material').val() == "ABS - ULTRA - 50 microns")
	    	price *= 28;
	    
	    price *= $("#length").val() / 100;
	    price *= $("#width").val() / 100;
	    price *= $("#heigth").val() / 100;
	    
	    setPrice();
	    //alert(price + " EUR");
	}
	
	function setPrice()  {
		$("#price").val(price);
	}
</script>

<body>			
				
<form action="ordine" method="post" class="container" enctype="multipart/form-data">
	<br>
	<h2 style="text-align: center">Richiedi stampa</h2>
	<br>
	<table class="table">
		<tr id="file-row">
			<td>Carica il modello 3D:</td>
			<td><input id="file-stl" type="file" name="file" required></td>
		</tr>
		<tr id="material-row">
	    	<td style="padding-top:12px;"><label for="material-select">Materiale:</label></td>
	        <td style="text-align:right;">
	        	<select id="material" class="selectii form-control select2-hidden-accessible" name="materiale" tabindex="-1" aria-hidden="true" onchange="calculatePrice()">
	        		<option>PLA - PLUS - 200 microns</option>
	        		<option>PLA - HIGH - 100 microns</option>
	        		<option>PLA - ULTRA - 50 microns</option>
	        		<option>ABS - PLUS - 200 microns</option>
	        		<option>ABS - HIGH - 100 microns</option>
	        		<option>ABS - ULTRA - 50 microns</option>
	        	</select>
	        </td>
		</tr>
		<tr id="color-row">
	    	<td style="padding-top:12px;"><label for="color-select">Colore:</label></td>
	       	<td>
	       		<select class="selectii form-control select2-hidden-accessible" name="colore" tabindex="-1">
	       			<option>Nero</option>
	       			<option>Bianco</option>
	       			<option>Grigio</option>
	       		</select>
       		</td>
	    </tr>
		<tr class="length-row">
		    <td style="padding-top:17px;"><label>Lunghezza (%): </label></td>
		    <td><input class="form-control" type="number" min="50" max="300" value="100" id="length" onchange="calculatePrice()" name="lunghezza"></td>
	 	</tr>
	 	<tr class="width-row">
		    <td style="padding-top:17px;"><label>Larghezza (%): </label></td>
		    <td><input class="form-control" type="number" min="50" max="300" value="100" id="width" onchange="calculatePrice()" name="larghezza"></td>
	 	</tr>
	 	<tr class="scale-row">
		    <td style="padding-top:17px;"><label>Altezza (%): </label></td>
		    <td><input class="form-control" type="number" min="50" max="300" value="100" id="heigth" onchange="calculatePrice()" name="altezza"></td>
	 	</tr>
	 	<tr class="fill-row">
		    <td style="padding-top:17px;"><label>Riempimento (%): </label></td>
		    <td><input class="form-control" type="number" min="0" max="100" value="100" id="fill" onchange="calculatePrice()" name="riempimento"></td>
	 	</tr>
	</table>
	
	<input type="hidden" value="" name="prezzo" id="price">
	<input value="Cerca" type="submit" id="search-printers" class="btn btn-success active" style="margin-left: auto; margin-right: auto; display: block; width: 100%">
</form>

<script>
	$('#file-stl').bind('change', function() {
	    size_for_price = this.files[0].size / 100000;
	    
	    calculatePrice();
	});
</script>

</body>
<div id="myDiv"></div>
<br>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>