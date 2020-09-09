<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Creacion de Usuario</title>

<spring:url value="/usuarios/save" var="urlForm"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<spring:url value="/resources/" var="urlPublic"></spring:url>

<%--     <link href="${urlPublic}bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>
<%--     <link href="${urlPublic}bootstrap/css/theme.css" rel="stylesheet"> --%>

	<link
		href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
		rel="stylesheet">
	<spring:url value="/usuarios/save" var="urlForm"></spring:url>
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
		<jsp:include page="../includes/menu.jsp"></jsp:include>
	<!-- END nav -->

	
			<div class="container theme-showcase" role="main">
			<c:if test="${listaErrores != null }">
				<div class="alert alert-danger" role="alert">
					<c:forEach items="${listaErrores}" var="error">
						<li>${error}</li>
					</c:forEach>
				</div>				
			</c:if>

			<h3 class="blog-title"><span class="label label-success">Datos del Usuario</span></h3>  

			<form:form action="${urlForm}" method="post" modelAttribute="usuario">
			<form:hidden path="id"/>
				<div class="row">         
					<div class="col-sm-3">
						<div class="form-group">
							<label for="perfil" class="control-label">Perfil</label>              
							<select id="perfil" name="perfil" class="form-control">
								<option value="1">EDITOR</option>
								<option value="2">GERENTE</option>								
							</select>             
						</div> 
					</div>
				</div>	
				<div class="row"> 	
					<div class="col-sm-3">
						<div class="form-group">
							<label for="cuenta">Cuenta</label>             
							<form:input type="text" class="form-control" path="cuenta" id="cuenta" />
						</div>  
					</div>
					
					<div class="col-sm-3">
						<div class="form-group">
							<label for="pwd">Password</label>             
							<input type="password" class="form-control" name="pwd" id="pwd"/>
						</div>  
					</div>
					
					<div class="col-sm-3">
						<div class="form-group">
							<label for="email">Email</label>
							<form:input type="text" class="form-control" path="email" id="email" placeholder="Correo electrónico" />
						</div>  
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label for="telefono">Teléfono</label>
							<form:input type="text" class="form-control" path="telefono" id="telefono" required="required"/>
						</div>  
					</div>
					
					 <div class="col-sm-3">
		            <div class="form-group">
		              <label for="estatus" class="control-label">Estatus</label>              
		              <form:select id="genero" path="activo" class="form-control">
			                <form:option value="1">Activa</form:option>
			                <form:option value="0">Inactiva</form:option>               
		              </form:select>             
		            </div> 
		          </div>
				</div>

				<button type="submit" class="btn btn-danger" onclick="prueba()" >Guardar</button>
			</form:form> 
			
			<hr class="featurette-divider">


	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
		<div class="container py-4">
			<div class="row d-flex justify-content-center py-5">
				<div class="col-md-6">
					<h2 style="font-size: 22px;" class="mb-0">Suscribase a nuestro correo</h2>
					<span>Eviaremos e-mails acerca de los ultimos estrenos</span>
				</div>
				<div class="col-md-6 d-flex align-items-center">
					<form action="#" class="subscribe-form">
						<div class="form-group d-flex">
							<input type="text" class="form-control"
								placeholder="Ingrese su correo Electronico"> <input type="submit"
								value="Subscribe" class="submit px-3">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<jsp:include page="../includes/footer.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<%--     <script src="${urlPublic}bootstrap/js/bootstrap.min.js"></script>  --%>


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
	<script src="${urlPublic}switAlert2/sweetalert2.all.min.js"></script>
	<script type="text/javascript">
		function prueba(){
			Swal.fire({
				  position: 'center',
				  icon: 'success',
				  title: 'Su Usuario Fue Insertado Con Exito',
				  showConfirmButton: false,
				  timer: 1500
				})
	    }
		$('form').submit( function(event) {
		       var form = this;

		       event.preventDefault();

		       setTimeout( function () { 
		           form.submit();
		       }, 1200);
		}); 
	</script>
</body>
</html>
