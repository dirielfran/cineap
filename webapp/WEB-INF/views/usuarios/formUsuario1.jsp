<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">    
		<meta name="author" content="">
		<title>Creacion de Usuarios</title>
		
		<spring:url value="/resources/" var="urlPublic"></spring:url>
		<spring:url value="/" var="urlRoot"></spring:url>
		<spring:url value="/usuarios/save" var="urlForm"></spring:url>
		<link href="${urlPublic}bootstrap/css/bootstrap.min.css" rel="stylesheet">    
		<link href="${urlPublic}bootstrap/css/theme.css" rel="stylesheet">
	</head>

	<body>

		<!-- Fixed navbar -->
		<jsp:include page="../includes/menu.jsp"></jsp:include>

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
							<input type="password" class="form-control" name="pwd" id="pwd" required="required"/>
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

				</div>

				<button type="submit" class="btn btn-danger" >Guardar</button>
			</form:form> 

			<hr class="featurette-divider">

			<!-- FOOTER -->
			<jsp:include page="../includes/menu.jsp"></jsp:include>	

		</div> <!-- /container -->

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
		<script src="${urlPublic}bootstrap/js/bootstrap.min.js"></script>    
	</body>
</html>