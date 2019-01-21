<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>3D Print Store</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/Wruczek/Bootstrap-Cookie-Alert@gh-pages/cookiealert.css">
</head>
<body>

	<div class="top-container">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-5 col1">
					<h5>www.3dPrintStore.com</h5>
				</div>
				<div class="col-sm-6 col-7 col2">
					<div class="row">
						<div class="col-sm-12">
							<a href="#"><i class="fa fa-facebook-official"
								aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter"
								aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-youtube" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-vimeo" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-google-plus" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Navigation -->
	<nav id="myHeader" class="header navbar navbar-expand-lg navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><img
				src="images/logo.png" alt="logo"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="mostraOrdini">Dashboard</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="printcoin.jsp">PrintCoin
							Conversion</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="registrazione.jsp">Registrati</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="login.jsp"><c:if test="${loggato}">logout</c:if>Login</a></li>
				</ul>
			</div>
		</div>
	</nav>