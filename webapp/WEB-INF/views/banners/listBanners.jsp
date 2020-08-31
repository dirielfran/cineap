<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">    
		<meta name="description" content="">
		<meta name="author" content="">
    <title>Listado de Banners</title>
    
    <spring:url value="/banners/delete" var="urlDelete" />
    <spring:url value="/banners/" var="urlRoot" />
    <spring:url value="/banners/edit" var="urlEdit" />
    <spring:url value="/banners/create" var="urlForm"></spring:url>
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

<body class="goto-here">
	
	<!-- Fixed navbar -->
		<jsp:include page="../includes/menu.jsp"></jsp:include>
	<!-- END nav -->
	<section class="ftco-section">
		<div class="container theme-showcase" role="main">
	    	<c:if test="${mensaje != null }">
				<div class='alert alert-success' role="alert">${mensaje}</div>
			</c:if>

      		<h3>Listado de imagenes del Banner</h3>
      
      		<a href="${urlForm}" class="btn btn-success btn-lg btn-boton" role="button" title="Nuevo Banner" >Nuevo Banner</a><br><br>
     		<div class="table-responsive">
				<table class="table table-hover table-striped table-bordered">
		           <tr>
		                <th>Id</th>
		                <th>Titulo</th>                           
		                <th>Fecha Publicacion</th>              
		                <th>Nombre Archivo</th>
		                <th>Estatus</th>
		                <th>Opciones</th>              
		            </tr>
		           <c:forEach items="${banners.content}" var="banner">
			            <tr>
			                <td>${banner.id}</td>
			                <td>${banner.titulo}</td>
			                <td><fmt:formatDate value="${banner.fecha}" pattern="dd-MM-yyyy"/></td>    
			                <td>${banner.archivo}</td>                         
			                <td>
		                		<c:choose>
									<c:when test="${banner.estatus eq 'Activo' }">
										<span class="label label-success">${banner.estatus}</span>
									</c:when>
									<c:otherwise>
										<span class="label label-danger">${banner.estatus}</span>
									</c:otherwise>
								</c:choose>
			                </td>
			                <td>
			                    <a href="${urlEdit}/${banner.id}" class="btn btn-success btn-lg btn-boton" role="button" title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
			                    <a href="${urlDelete}/${banner.id}" onclick='return confirm("¿Desea eliminar?")' class="btn btn-success btn-lg btn-boton-danger" role="button" title="Eliminar" ><span class="glyphicon glyphicon-trash"></span></a>
			                </td>
			            </tr>
		            </c:forEach>		                    
	       		</table>
		       <nav aria-label="">
						<ul class="pager">
							<li><a href="${urlRoot}indexPagina?page=${banner.number - 1 }">Anterior</a></li>
							<li><a href="${urlRoot}indexPagina?page=${banner.number + 1 }">Siguiente</a></li>
						</ul>
				</nav>		
			</div>
		</div>	
	</section>
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