<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:if test="${not loggato}">
	<script>
		window.location = "login.jsp";
		</script>
</c:if>
<link rel="stylesheet"
		href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css"
		integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
		crossorigin="" />

<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="css/dashboardTable.css">
<body>
	<header class="banner">
		<div class="gradient"></div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 heading">
					<h1 data-aos="fade-right" data-aos-delay="300">DashBoard</h1>
					<h2 data-aos="fade-left" data-aos-delay="300">Benvenuto!
						${username}</h2>
					<h5>Il tuo saldo è di ${saldo} PrintCoin</h5>
				</div>
			</div>
		</div>
	</header>


	<p>${pt}</p>
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
					<td><a href="files/${o.file}.stl"><img class="stl"
						src="https://i.all3dp.com/wp-content/uploads/2016/03/27112039/STL_Viewer.jpg"></a></td>
					<td><a href="#map" onclick="printerLoc(${o.printer.latitudine},${o.printer.longitudine},'${o.printer.userName}')">${o.printer.userName}</a></td>
					<td>${o.printer.email}</td>
					<td>${o.prezzo}</td>
					<td>Materiale: ${o.materiale} Qualità: ${o.qualita}
						Riempimento: ${o.riempimento}%</td>
					<td><c:if test="${isprinter}">
							<a id="${o.id}" value="${o.id}"
								onclick="updateStateOrd(this.id);"> <c:choose>
									<c:when test="${o.stato==1}">
										<i class="fas fa-hourglass-half"></i>
									</c:when>
									<c:when test="${o.stato==0}">
										<i class="fas fa-times"></i>
									</c:when>
									<c:when test="${o.stato==2}">
										<i class="fas fa-check-circle"></i>
									</c:when>
								</c:choose>
							</a>
						</c:if> <c:if test="${not isprinter}">
							<c:choose>
								<c:when test="${o.stato==1}">
									<i class="fas fa-hourglass-half"></i>
								</c:when>
								<c:when test="${o.stato==0}">
									<i class="fas fa-times"></i>
								</c:when>
								<c:when test="${o.stato==2}">
									<i class="fas fa-check-circle"></i>
								</c:when>
							</c:choose>
						</c:if></td>

				</tr>
			</c:forEach>
		</table>
	</div>
	<p></p>
	<c:if test="${isprinter}">
		<div class="table-users">
			<div class="headerz">Pagamenti</div>

			<table cellspacing="0">
				<tr>
					<th>Email</th>
					<th>Ammontare</th>
					<th>Stato</th>

				</tr>

				<c:forEach items="${pagamenti}" var="p">
					<tr>
						<td>${p.email}</td>
						<td>${p.prezzo}EURO</td>
						<td><c:choose>
								<c:when test="${p.stato==1}">
									<i class="fas fa-hourglass-half"></i>
								</c:when>
								<c:when test="${p.stato==0}">
									<i class="fas fa-times"></i>
								</c:when>
								<c:when test="${p.stato==2}">
									<i class="fas fa-check-circle"></i>
								</c:when>
							</c:choose></td>

					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	<div class="map" id="map" style="height: 400px">
							<div class="popupCloseButton">X</div>
						</div>
	
	<!-- Make sure you put this AFTER Leaflet's CSS -->
	<script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"
		integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg=="
		crossorigin=""></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>