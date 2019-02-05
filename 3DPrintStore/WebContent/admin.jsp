<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" href="css/dashboardTable.css">
<body>
 <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">Admin</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Gestisci Pagamenti</h2>
                 </div>  
              </div>
          </div>
    </header>
    
	<p></p>
<div class="table-users">
   <div class="headerz">Pagamenti</div>
   
   <table cellspacing="0">
      <tr>
         <th>Nome Printer</th>
         <th>Ammontare</th>
         <th>Paypal Email</th>
         <th>Stato</th>
         
      </tr>  
      
      <c:forEach items="${pagamenti}" var="p">
      <tr>
						<td>${p.printer.userName}</td>
						<td>${p.prezzo} EURO</td>
						<td  ><a href="https://www.paypal.com/cgi-bin/webscr?&cmd=_xclick&business=${p.email}&currency_code=EUR&amount=${p.prezzo}&item_name=Conversion">${p.email}</a>
						
						<td><a id="${p.id}" value="${p.id}"onclick="updateState(this.id);">
						<c:choose>
						<c:when test="${p.stato==1}"><i class="fas fa-hourglass-half"></i></c:when>	
						<c:when test="${p.stato==0}"><i class="fas fa-times"></i></c:when> 
						<c:when test="${p.stato==2}"><i class="fas fa-check-circle"></i></c:when>
						</c:choose>
						</a>
						</td>
						
		</tr>
					</c:forEach>
   </table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>