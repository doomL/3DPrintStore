<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="img/favicon.ico">

<title>3D Print Store Login</title>

<link href="css/font-awesome.min.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert2@7.12.12/dist/sweetalert2.all.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css"
	rel="stylesheet" />

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans|Sedgwick+Ave+Display"
	rel="stylesheet">



<link rel="stylesheet" href="css/login2.css">

</head>

<body class="align">

	<div class="grid"  class="center">

<img src="images/logo.png" alt="logo">
				<br></br>
		<form class="form login" method="POST" action="login">

			<div class="form_field">
				<label for="login_username"><i class="fa fa-user"></i><span
					class="hidden">Username</span></label> <input id="login_username"
					type="text" name="login_username" class="form_input"
					placeholder="Username" required>
			</div>

			<div class="form_field">
				<label for="login_password"><i class="fa fa-lock"></i><span
					class="hidden">Password</span></label> <input id="login_password"
					type="password" name="login_password" class="form_input"
					placeholder="Password" required>
			</div>

			<div class="form_field">
				<input type="submit" id="button" onclick="login()" name="accesso" value="Sign In">
			</div>


		<p class="text--center">
			Non sei registrato? <a href="registrazione.jsp">Registrati</a>
		</p>
		
		</form>
	<c:if test="${wrong}">
		<script>
		swal({
			  type: 'error',
			  title: 'Oops...',
			  text: 'Username o/e Password Sbagliati!',
			  confirmButtonText: 'Riprova'

			})
		</script>
	</c:if>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/login.js"></script>
	

</body>
</html>