<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"h>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

	<section id="home-section" class="hero">
		<div class="home-slider owl-carousel">
			<c:forEach items="${listaBanners}" var="banner">
				<div class="slider-item"
					style="background-image: url(${urlPublic}images/${banner.archivo});">
					<div class="overlay"></div>
					<div class="container">
						<div
							class="row slider-text justify-content-center align-items-center"
							data-scrollax-parent="true">
	
							<div class="col-md-12 ftco-animate text-center">
								<p>
									<a href="#" class="btn btn-primary btn-boton">Detalle</a>
								</p>
							</div>
	
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>


	<section class="ftco-section" style="padding-bottom: 1em; padding-top: 6em">
		<div class="container">
			<div class="row no-gutters ftco-services">
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-shipped"></span>
						</div>
						<div class="media-body" style="display: block;">
							<h3 class="heading">Delivery gratis</h3>
							<span>En ordenes mayores a 100$</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-diet"></span>
						</div>
						<div class="media-body" style="display: block;">
							<h3 class="heading">Siempre fresco</h3>
							<span>Productos empacados</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-award"></span>
						</div>
						<div class="media-body" style="display: block;">
							<h3 class="heading">Alta calidad</h3>
							<span>Productos de la mejor calidad</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services mb-md-0 mb-4">
						<div
							class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
							<span class="flaticon-customer-service"></span>
						</div>
						<div class="media-body" style="display: block;">
							<h3 class="heading">Soporte</h3>
							<span>Soporte 24/7</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	
	<section class="ftco-section">
      	<div class="container">
			<div class="row page-header">          
		        <div class="col-lg-12 heading-section" >         
		          <h2 class="text text-center" style="color:#28a745; margin-bottom: 30px"><span class="label label-success">EN CARTELERA</span></h2>          
		          <form class="form-inline" action="${urlRoot}buscar" method="post">
		           	<label for="fecha" style="margin-right: 10px; font-size: 20px;">Fecha: </label>
		            <div class="form-group">
		              
		              <select id="fecha" name="fecha" class="form-control" style="margin-right: 10px; height: 40px !important;">
		               <c:forEach items="${listaFecha}" var="fecha">
		                  <c:choose>
									<c:when test="${fechaBusqueda eq fecha}" >
									     <option value="${fecha}" selected>${fecha}</option>	
									</c:when>
									<c:otherwise>
									     <option value="${fecha}">${fecha}</option>	
									</c:otherwise>
						  		</c:choose>	
		               </c:forEach>             
		              </select>
		            </div>            
		            <button type="submit" class="btn btn-primary btn-boton" style="margin-bottom: 5px; margin-left: 10px;">Filtrar</button>
		         	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		          </form>
		        </div>
		        <div class="container marketing">

        			<div class="row">

						<c:forEach items="${peliculas }" var="pelicula">
							<c:if test="${pelicula.estatus eq 'Activa'}">
					          <div class="col-xs-12 col-sm-6 col-md-3" style="text-align: center;">
					            <img style="border-radius: 6px; margin-top: 50px;" src="${urlPublic}images/${pelicula.imagen}" alt="Generic placeholder image" width="150" height="200">
					            <h4 style="text-align: center; font-size: 18px;">${pelicula.titulo }</h4>
					            <h4 style="text-align: center; font-size: 18px;">
					              <span class="label label-default">${pelicula.clasificacion }</span>
					              <span class="label label-default">${pelicula.duracion } min</span>
					              <span class="label label-default">${pelicula.genero }</span>
					            </h4>         
					            <p><a class="btn btn-primary btn-boton" href="${urlRoot}detail?idPelicula=${pelicula.id }&fecha=${fechaBusqueda}" role="button">Consulta Horarios &raquo;</a></p>             
					          </div>
				          </c:if>
					    </c:forEach>
          

        			</div>
        		</div>
		    </div>
		</div>
	</section>
	


	<section class="ftco-section testimony-section">
		<div class="container">
			<div class="row ftco-animate">
				<div class="col-md-12 heading-section" style="text-align: center;">
					<span class="subheading" >Noticias y novedades</span>
					<div class="carousel-testimony owl-carousel">
						<c:forEach items="${noticias}" var="noticia">
							<c:if test="${noticia.estatus eq 'Activa'}">
								<div class="item">
									<div class="testimony-wrap p-4 pb-5">
										<div class="user-img mb-5"
											style="background-image: url(${urlPublic}images/person_1.jpg)">
											<span
												class="quote d-flex align-items-center justify-content-center">
												<i class="icon-quote-left"></i>
											</span>
										</div>
										<h4 class="mb-4">${noticia.titulo}</h4>
										<div class="text text-center">
											<p class="mb-5 pl-4 line">${noticia.detalle}</p>
											<p class="name">Fecha: </p>
											<span class="position"><fmt:formatDate value="${noticia.fecha}" pattern="dd-MM-yyyy"/></span>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>						
					</div>
				</div>
			</div>
		</div>
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
