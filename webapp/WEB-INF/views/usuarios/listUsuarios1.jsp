<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Listado de imagenes del banner</title>
    <spring:url value="/usuarios/create" var="urlForm"></spring:url>
    <spring:url value="/resources/" var="urlPublic"></spring:url>
    <spring:url value="/" var="url"></spring:url>
    <link href="${urlPublic}bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${urlPublic}bootstrap/css/theme.css" rel="stylesheet">
    
  </head>

  <body>

    <!-- Fixed navbar -->
	<jsp:include page="../includes/menu.jsp"></jsp:include>

    <div class="container theme-showcase" role="main">
		<c:if test="${mensaje != null }">
			<div class="alert alert-success">${mensaje}</div>
		</c:if>
      <h3>Listado de Usuarios</h3>
      
      <a href="${urlForm}" class="btn btn-success" role="button" title="Nuevo Usuario" >Nuevo</a><br><br>

      <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>Id</th>
                <th>Cuenta</th>                           
                <th>email</th>              
                <th>Telefono</th>
                <th>Rol</th>
                <th>Estatus</th> 
                <th>Opciones</th>             
            </tr>
            <c:forEach var="usuario" items="${usuarios.content}">
            	<tr>
	                <td>${usuario.id}</td>
	                <td>${usuario.cuenta}</td>
	                <td>${usuario.email }</td>    
	                <td>${usuario.telefono }</td>
	                <td><c:forEach items="${usuario.perfiles}" var="perfil">${perfil.perfil}</c:forEach></td>                        
	                <td><span class="label label-success">estatus</span></td>
	                <td>
	                    <a href="${url}usuarios/update/${usuario.id}" class="btn btn-success btn-sm" role="button" title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
	                    <a href="${url}usuarios/delete/${usuario.id}" class="btn btn-danger btn-sm" role="button" title="Eliminar" ><span class="glyphicon glyphicon-trash"></span></a>
	                </td>
	            </tr>
            </c:forEach>
                    
        </table>
        <nav aria-label="">
			<ul class="pager">
			
				<li><a href="${url}usuarios/indexPagina?page=${listaUsuarios.number - 1 }">Anterior</a></li>
				<li><a href="${url}usuarios/indexPagina?page=${listaUsuarios.number + 1 }">Siguiente</a></li>
			</ul>
		</nav>
      </div>  
      <hr class="featurette-divider">

      <!-- FOOTER -->
      <jsp:include page="../includes/footer.jsp"></jsp:include>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script src="${urlPublic}bootstrap/js/bootstrap.min.js"></script>     
  </body>
</html>