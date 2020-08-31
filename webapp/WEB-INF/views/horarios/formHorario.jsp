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
		<title>Creacion de Horarios</title>

		<spring:url value="/horarios/guardar" var="urlForm"></spring:url>
		<spring:url value="/resources/" var="urlPublic"></spring:url>
		<link href="${urlPublic }bootstrap/css/bootstrap.min.css" rel="stylesheet">    
   		<link href="${urlPublic}bootstrap/css/theme.css" rel="stylesheet">
		
   	 	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
		<jsp:include page="../includes/menu.jsp"></jsp:include>
	<!-- END nav -->
	
	<spring:hasBindErrors name="horario">
	<!--Clase propia de bootstrap para alertar y colocar mensaje en color rojo -->
		<div class='alert alert-danger' role='alert'>
				Por favor corrija los siguientes errores:
				<ul>
					<c:forEach var="error" items="${errors.allErrors}">
						<li><spring:message message="${error}" /></li>
					</c:forEach>
				</ul>
			</div>
	</spring:hasBindErrors>
	
	<div class="container theme-showcase" role="main">
		<h3 class="blog-title"><span class="label label-success">Datos del Horario</span></h3> 
	
		<form:form action="${urlForm}" method="post"  modelAttribute="horario">
			<form:hidden path="id"/>
				<div class="row">         
					<div class="col-sm-3">
						<div class="form-group">
							<label for="idPelicula" class="control-label">Pelicula</label>              
							<form:select id="idPelicula" path="pelicula.id"	class="form-control" 
							items="${peliculas}" itemLabel="titulo" itemValue="id" />             
						</div> 
					</div>
				</div>
				<div class="row"> 
					<div class="col-sm-3">
						<div class="form-group">
							<label for="fecha">Fecha</label>             
							<form:input type="text" class="form-control" path="fecha" id="fecha" required="required"/>
						</div>  
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label for="hora">Hora</label>
							<form:input type="text" class="form-control" path="hora" id="hora" placeholder="Formato: HH:mm Ejemplo 21:30" required="required"/>
						</div>  
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label for="sala" class="control-label">Sala</label>              
							<form:select id="sala" path="sala" class="form-control">
								<form:option value="Premium">Sala Premium</form:option>
								<form:option value="Sala 1">Sala 1</form:option>
								<form:option value="Sala 2">Sala 2</form:option>
								<form:option value="Sala 3">Sala 3</form:option>                
							</form:select>             
						</div> 
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label for="precio">Precio</label>
							<form:input type="text" class="form-control" path="precio" id="precio" required="required"/>
						</div>  
					</div>

				</div>

        	<button type="submit" class="btn btn-danger btn-dangerb" >Guardar</button>   
		</form:form>		
	</div>

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
	<script>
      $(function () {
            $("#fecha").datepicker({dateFormat: 'dd-mm-yy'});
        }
      );
    </script>
</body>
</html>
