<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<spring:url value="/" var="urlRoot"></spring:url>
<div class="py-1 bg-primary">
	<div class="container">
		<div
			class="row no-gutters d-flex align-items-start align-items-center px-md-0">
			<div class="col-lg-12 d-block">
				<div class="row d-flex">
					<div class="col-md pr-4 d-flex topper align-items-center">
						<div
							class="icon mr-2 d-flex justify-content-center align-items-center">
							<span class="icon-phone2"></span>
						</div>
						<span class="text">11 50265700</span>
					</div>
					<div class="col-md pr-4 d-flex topper align-items-center">
						<div
							class="icon mr-2 d-flex justify-content-center align-items-center">
							<span class="icon-paper-plane"></span>
						</div>
						<span class="text">dirielfran@gmail.com</span>
					</div>
					<div
						class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						<span class="text">Trabajando siempre para servirles</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">


		<a class="navbar-brand" href="${urlRoot}">CineApp</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<%-- 		          <li class="nav-item active"><a href="${urlRoot}" class="nav-link">Home</a></li> --%>
				<!-- 		          <li class="nav-item dropdown"> -->
				<!-- 		              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a> -->
				<!-- 		              <div class="dropdown-menu" aria-labelledby="dropdown04"> -->
				<!-- 		              	<a class="dropdown-item" href="shop.html">Shop</a> -->
				<!-- 		              	<a class="dropdown-item" href="wishlist.html">Wishlist</a> -->
				<!-- 		                <a class="dropdown-item" href="product-single.html">Single Product</a> -->
				<!-- 		                <a class="dropdown-item" href="cart.html">Cart</a> -->
				<!-- 		                <a class="dropdown-item" href="checkout.html">Checkout</a> -->
				<!-- 		              </div> -->
				<!-- 	              </li> -->
				<!-- 		          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li> -->
				<!-- 		          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
				<!-- 		          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li> -->
				<!-- 		          <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li> -->



				<!-- 		    autorizacion para usuarios que son editores y gerentes   -->
				<sec:authorize access="hasAnyAuthority('EDITOR', 'GERENTE')">
					<li class="nav-item"><a
						href="${urlRoot}pelicula/indexPagina?page=0" class="nav-link">Peliculas</a></li>
					<li class="nav-item"><a
						href="${urlRoot}horarios/indexPagina?page=0" class="nav-link">Horarios</a></li>
					<li class="nav-item"><a
						href="${urlRoot}noticias/indexPagina?page=0" class="nav-link">Noticia</a></li>
					<li class="nav-item"><a
						href="${urlRoot}usuarios/indexPagina?page=0" class="nav-link">Usuarios</a></li>
				</sec:authorize>


				<!--           autorizacion para usuarios que son gerentes   -->
				<sec:authorize access="hasAnyAuthority('GERENTE')">
					<li class="nav-item"><a
						href="${urlRoot}banners/indexPagina?page=0" class="nav-link">Banners</a></li>
				</sec:authorize>

				<li class="nav-item"><a href="${urlRoot}acerca"
					class="nav-link">Acerca</a></li>

				<!--             autorizacion para usuarios que son anonimos   -->
				<sec:authorize access="isAnonymous()">
					<li class="nav-item"><a href="${urlRoot}login"
						class="nav-link">Login</a></li>
				</sec:authorize>

				<!--             autorizacion para usuarios que no son anonimos   -->
				<sec:authorize access="!isAnonymous()">
					<li class="nav-item"><a href="${urlRoot}admin/logout"
						class="nav-link">Salir</a></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>