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
    <title>Listado de Horarios</title>
  
  	<spring:url value="/horarios/" var="urlRoot" />
  	<spring:url value="/horarios/delete/" var="urlDelete"></spring:url>
  	<spring:url value="/horarios/create/" var="urlForm" />
  	<spring:url value="/horarios/edit/" var="urlEdit" />
  	<spring:url value="/resources/" var="urlPublic" />
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

      		<h3>Listado de Horarios</h3>
      
      		<a href="${urlForm}" class="btn btn-success btn-lg btn-boton" role="button" title="Nuevo Horario" >Nuevo Horario</a><br><br>
     		<div class="table-responsive">
				<table class="table table-hover table-striped table-bordered">
		            <tr>
		                <th>Pelicula</th>
		                <th>Fecha</th>
		                <th>Hora</th>
		                <th>Sala</th>
		                <th>Precio</th>
		                <th>Opciones</th>
		            </tr>
		            <c:forEach items="${horarios.content}" var="horario">
			            <tr>
			                <td>${horario.pelicula.titulo}</td>
			                <td><fmt:formatDate value="${horario.fecha}" pattern="dd-MM-yyyy"/></td>
			                <td>${horario.hora}</td>
			                <td>${horario.sala}</td>
			                <td>${horario.precio}</td>              
			                <td>
								<a href="${urlEdit}${horario.id}" class="btn btn-success btn-lg btn-boton" role="button" title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
								<a href="#" onClick='prueba("${urlDelete}${horario.id}")' class="btn btn-success btn-lg btn-boton-danger" role="button" title="Delete" ><span class="glyphicon glyphicon-trash"></span></a>
							</td>
			            </tr>
			         </c:forEach> 		                    
	       		</table>
		        <nav aria-label="">
					<ul class="pager">
						<li><a href="${urlRoot}indexPagina?page=${horarios.number - 1 }">Anterior</a></li>
						<li><a href="${urlRoot}indexPagina?page=${horarios.number + 1 }">Siguiente</a></li>
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
	<script src="${urlPublic}switAlert2/sweetalert2.all.min.js"></script>

	<script>
		function prueba(elemento){
			const swalWithBootstrapButtons = Swal.mixin({
				  customClass: {
				    confirmButton: 'btn btn-success',
				    cancelButton: 'btn btn-danger'
				  },
				  buttonsStyling: false
				})

				swalWithBootstrapButtons.fire({
				  title: 'Estas Seguro?',
				  text: "No podr�s revertir esto!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: 'Si, borrar!',
				  cancelButtonText: 'No, cancelar!',
				  reverseButtons: true
				}).then((result) => {
				  if (result.dismiss === Swal.DismissReason.cancel) {
					  swalWithBootstrapButtons.fire(
						      'Cancelado',
						      'Tu Banner esta a salvo :)',
						      'error'
				    )
				  } else if (result.value){
					  swalWithBootstrapButtons.fire(
						      'Eliminado!',
						      'Tu Banner fue eliminado.',
						      'success'
				    )
				    setTimeout( function () { 
					    location.href = elemento;
	     		 	}, 1200);
				  }
				})
		}
	</script>

</body>