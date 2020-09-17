<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">    
		<meta name="description" content="">
		<meta name="author" content="">
    <title>Listado de Peliculas</title>
    <spring:url value="/Banners/delete" var="urlDelete" />
    <spring:url value="/pelicula/" var="urlRoot" />
    <spring:url value="/pelicula/delete" var="urlDelete" />
    <spring:url value="/pelicula/edit" var="urlEdit" />
    <spring:url value="/pelicula/create" var="urlForm"></spring:url>
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
			<c:if test="${mensajeEliminar != null }">
				<div class='alert alert-danger' role="alert">${mensajeEliminar}</div>
			</c:if>
     		<h3>Listado de Peliculas</h3>
     		<a href="${urlForm}" class="btn btn-success btn-lg btn-boton" role="button" title="Nueva Pelicula" >Nueva Pelicula</a><br><br>
			<div class="table-responsive">
				<table class="table table-hover table-striped table-bordered">
		            <tr>
		                <th>Titulo</th>
		                <th>Genero</th>
		                <th>Clasificacion</th>
		                <th>Duracion</th>
		                <th>Fecha Estreno</th>
		                <th>Estatus</th>
		                <th>Opciones</th>
		            </tr>
            		<c:forEach var="pelicula" items="${peliculas.content}">
		            	<tr>
			                <td>${pelicula.titulo}</td>
			                <td>${pelicula.genero }</td>
			                <td>${pelicula.clasificacion}</td>
			                <td>${pelicula.duracion}</td>
			                <td><fmt:formatDate value="${pelicula.fechaEstreno}" pattern="dd-MM-yyyy"/></td>
			                <c:choose>
				              	<c:when test="${pelicula.estatus eq 'Activa' }">
				                	<td><span class="label label-success">${pelicula.estatus}</span></td>
				                </c:when>
				                <c:otherwise>
				                	<td><span class="label label-danger">${pelicula.estatus}</span></td>
				                </c:otherwise>
			                </c:choose>
			                <td>
		                   		<a href="${urlEdit}/${pelicula.id}" class="btn btn-success btn-lg btn-boton" role="button"  title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
		                    	<a href="#" onClick='prueba("${urlDelete}/${pelicula.id}")' class="btn btn-success btn-lg btn-boton-danger" role="button" title="Eliminar" ><span class="glyphicon glyphicon-trash"></span></a>
		                	</td>
		           	 	</tr>
		            </c:forEach>		                    
	       		</table>
		        <nav aria-label="">
					<ul class="pager">
					
						<li><a href="${urlRoot}indexPagina?page=${peliculas.number - 1 }" >Anterior</a></li>
						<li><a href="${urlRoot}indexPagina?page=${peliculas.number + 1 }" >Siguiente</a></li>
					</ul>
				</nav>		
			</div>
		</div>	
	</section>
	
	<hr>

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
	<script src="${urlPublic}sweetalert2.all.min.js"></script>
	<script>
		function prueba(elemento){
			var boton=document.getElementById("botonEliminar")
			const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn btn-success',
			    cancelButton: 'btn btn-danger'
			  },
			  buttonsStyling: false
			})
			
			swalWithBootstrapButtons.fire({
			  title: 'Est�s seguro?',
			  text: "No puedes revertir este cambio",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonText: 'Si, borrar',
			  cancelButtonText: 'No, cancelar',
			  reverseButtons: true
			}).then((result) => {
			  if (result.value) {
			    swalWithBootstrapButtons.fire(
			      'Borrado!',
			      'Tu archivo se borro.',
			      'success'
			    )
			    location.href = elemento;
			  } else if (
			    /* Read more about handling dismissals below */
			    result.dismiss === Swal.DismissReason.cancel
			  ) {
			    swalWithBootstrapButtons.fire(
			      'Cancelado',
			      'Su archivo est� a salvo :)',
			      'error'
			    )
			  }
			})
			
			};
	</script>	
	
	
	

</body>