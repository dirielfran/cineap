<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>CineSite | Bienvenido</title>

<spring:url value="/" var="urlRoot"></spring:url>
<spring:url value="/resources/" var="urlPublic"></spring:url>

    <link href="${urlPublic}bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${urlPublic}bootstrap/css/theme.css" rel="stylesheet">

	<link
		href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
		rel="stylesheet">
	
	<link rel="stylesheet"
		href="${urlPublic}css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="${urlPublic}css/animate.css">
	
	<link rel="stylesheet" href="${urlPublic}css/owl.carousel.min.css">
	<link rel="stylesheet" href="${urlPublic}css/owl.theme.default.min.css">
	<link rel="stylesheet" href="${urlPublic}css/magnific-popup.css">
	
	<link rel="stylesheet" href="${urlPublic}css/aos.css">
	
	<link rel="stylesheet" href="${urlPublic}css/ionicons.min.css">
	
	<link rel="stylesheet" href="${urlPublic}css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="${urlPublic}css/jquery.timepicker.css">
	
	
	<link rel="stylesheet" href="${urlPublic}css/flaticon.css">
	<link rel="stylesheet" href="${urlPublic}css/icomoon.css">
	<link rel="stylesheet" href="${urlPublic}css/style.css">
</head>

<body class="goto-here" >
	
	<!-- Fixed navbar -->
		<jsp:include page="includes/menu.jsp"></jsp:include>
	<!-- END nav -->
	<section class="ftco-section" style="padding-bottom: 1em;">
	
	   <!-- Register Section Begin -->
	    <div class="register-login-section spad" style="padding-top: 0px">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 offset-lg-3">
	                    <div class="login-form">
	                        <h2>Login</h2>
	                        <form action="${urlRoot}login" method="post">
	                        	<c:if test="${param.error != null}">
									<img src="${urlPublic}images/error.png" width="48" height="48" class="center">
									<h4 class="form-signin-heading" style="color:red">Acceso denegado</h4>
								</c:if>
	                            <div class="group-input">
	                                <label for="username">Usuario: *</label>
	                                <input type="text" id="username" name="username" class="form-control" placeholder="Usuario" required autofocus>
	                            </div>
	                            <div class="group-input">
	                                <label for="password" class="sr-only">Contraseņa</label>
									<input type="password" id="password" name="password" class="form-control" placeholder="Password" >
									<input type="hidden"name="${_csrf.parameterName}" value="${_csrf.token}"/>
	                            </div>
	                            <div class="group-input gi-check">
	                                <div class="gi-more">
	                                    <label for="save-pass">
	                                        Save Password
	                                        <input type="checkbox" id="save-pass">
	                                        <span class="checkmark"></span>
	                                    </label>
	                                    <a href="#" class="forget-pass">Recordar la contraseņa</a>
	                                </div>
	                            </div>
	                            <button class="btn-boton btn btn-lg btn-primary btn-block " type="submit">Entrar</button>
	                        </form>
	                        <div class="switch-login">
	                            <a href="./register.html" class="or-login">Crear una Cuenta</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- Register Form Section End -->
	</section>

	<hr>

	<!-- FOOTER -->
	<jsp:include page="includes/footer.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlPublic}bootstrap/js/bootstrap.min.js"></script> 


	<script src="${urlPublic}js/jquery.min.js"></script>
	<script src="${urlPublic}js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${urlPublic}js/popper.min.js"></script>
	<script src="${urlPublic}js/bootstrap.min.js"></script>
	<script src="${urlPublic}js/jquery.easing.1.3.js"></script>
	<script src="${urlPublic}js/jquery.waypoints.min.js"></script>
	<script src="${urlPublic}js/jquery.stellar.min.js"></script>
	<script src="${urlPublic}js/owl.carousel.min.js"></script>
	<script src="${urlPublic}js/jquery.magnific-popup.min.js"></script>
	<script src="${urlPublic}js/aos.js"></script>
	<script src="${urlPublic}js/jquery.animateNumber.min.js"></script>
	<script src="${urlPublic}js/bootstrap-datepicker.js"></script>
	<script src="${urlPublic}js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${urlPublic}js/google-map.js"></script>
	<script src="${urlPublic}js/main.js"></script>

</body>
</html>
