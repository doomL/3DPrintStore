<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<c:if test="${not loggato}">
		<script>
		window.location = "login.jsp";
		</script>
	</c:if>  
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="css/dashboardTable.css">
<body>
 <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">DashBoard</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Il Tuo Account</h2>
                 </div>  
              </div>
          </div>
    </header>
    
	<p></p>
<div class="table-users">
   <div class="headerz">Stampe</div>
   
   <table cellspacing="0">
      <tr>
         <th>Modello</th>
         <th>Nome Printer</th>
         <th>Email Printer</th>
         <th>Costo</th>
         <th>Parametri</th>
         <th>Stato</th>
         
      </tr>  
      
      <c:forEach items="${ordini}" var="o">
      <tr>
						<td><img class="stl" src="https://i.all3dp.com/wp-content/uploads/2016/03/27112039/STL_Viewer.jpg"></td>
						<td>${o.printer.userName}</td>
						<td>${o.printer.email}</td>
						<td>${o.prezzo}</td>
						<td>Materiale: ${o.materiale}
							Qualità: ${o.qualita}
							Riempimento: ${o.riempimento}%</td>
						<td>
						<c:choose>
						<c:when test="${o.stato==1}"><i class="fas fa-hourglass-half"></i></c:when>	
						<c:when test="${o.stato==0}"><i class="fas fa-times"></i></c:when> 
						<c:when test="${o.stato==2}"><i class="fas fa-check-circle"></i></c:when>
						</c:choose>
						</td>
						
		</tr>
					</c:forEach>
   </table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>