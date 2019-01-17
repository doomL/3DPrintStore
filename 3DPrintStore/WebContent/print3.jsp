<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
</body>
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
 <iframe id="iframe1" name="iframe1" src="https://www.3dabax.com/calc/index.php?vendor=179"  height="700px"  width="100%" allowtransparency="true" allowFullScreen="true" frameBorder="0"></iframe>
 <!-- <iframe id="iframe1" name="iframe1" target="config.php?vendor=179"  height="700px"  width="100%" allowtransparency="true" allowFullScreen="true" frameBorder="0"></iframe>  -->
<script>
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
}
xmlhttp.open("GET","config.php",true);
xmlhttp.send();
}
</script>
</head>
<body>

<button type="button" onclick="loadXMLDoc()">Request data</button>
<div id="myDiv"></div>
<br>
<button onclick="printPrice()"></button>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>