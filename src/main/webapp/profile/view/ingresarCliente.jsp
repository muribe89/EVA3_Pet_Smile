<%@page import="bean.Login_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>Registro</title>
</head>
<body style="background-color: #508bfc;">
 <%
 Login_Bean obj_Login_Bean=(Login_Bean)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
 session.setAttribute("login_message", "Por favor, iniciar sesi�n");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8070/clinica/index.jsp";
 </script>
 <% 
 }else{
 %>
 <nav class="navbar navbar-expand-sm navbar-dark bg-dark" aria-label="Third navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="http://localhost:8070/clinica/profile/view/Home.jsp">Pet Smile</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav me-auto mb-2 mb-sm-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="http://localhost:8070/clinica/profile/view/Home.jsp">Home</a>
          </li>
          <li class="nav-item">
          <a class="nav-link active" href="http://localhost:8070/clinica/profile/view/ingresarCliente.jsp" >Registrar Cliente</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="http://localhost:8070/clinica/profile/view/listarHoras.jsp" >Horas Agendadas</a>
          </li>
        </ul>
        <form>
          <a href="http://localhost:8070/clinica/Signoutcontroller" id="salir" class="btn btn-outline-primary">
            Salir
          </a>
        </form>
      </div>
    </div>
  </nav>
<div class="mt-5 row d-flex justify-content-center">          
	<div class="card border-secondary col-12 col-md-8 col-lg-6 col-xl-5">  
		  <div class="card-header  text-center">Registro de Cliente</div>
		  <div class="card-body ">
			  <form action="/clinica/profile/controller/Registrar_cliente.jsp" method="POST" class="needs-validation">
				  <div class="mb-3">
					<label for="rut" class="form-label">Rut</label>
					<input type="text" class="form-control" id="rut" name="rut" tabindex="1"  required autofocus>                        
				  </div>   
				  <div class="mb-3">
					<label for="nombre" class="form-label">Nombre</label>
					<input type="text" class="form-control" id="nombre" name="nombre" tabindex="1"  required>                        
				  </div>
				   <div class="mb-3">
					<label for="apellido" class="form-label">Apellido</label>
					<input type="text" class="form-control" id="apellido" name="apellido" tabindex="1"  required>                        
				  </div>
				   <div class="mb-3">
					<label for="direccion" class="direccion">Direcci�n</label>
					<input type="text" class="form-control" id="direccion" name="direccion" tabindex="1"  required>                        
				  </div>    
				  <div class="mb-3">
					<label for="correo" class="form-label">Correo</label>
					<input type="email" class="form-control" id="correo" name="correo" tabindex="1"  required>                        
				  </div>
				   <div class="mb-3">
					<label for="telefono" class="form-label">Telefono</label>
					<input type="text" class="form-control" id="telefono" name="telefono" tabindex="1"  required>                        
				  </div> 
				   <div class="mb-3">
					<label for="nombreMascota" class="form-label">Nombre de la Mascota</label>
					<input type="text" class="form-control" id="nombreMascota" name="nombreMascota" tabindex="1"  required>                        
				  </div> 
				   <div class="mb-3">
					<label for="tipoMascota" class="form-label">Tipo de Mascota</label>         
					<select class="form-select" id="tipoMascota" name="tipoMascota" required>
					  <option selected>--Seleccione--</option>
					  <option value="perro">Perro</option>
					  <option value="gato">Gato</option>
					  <option value="ave">Ave</option>
					  <option value="reptil">Reptil</option>
					  <option value="anfibio">Anfibio</option>
					  <option value="pez">Pez</option>
					</select>  
				  </div>
				  <div class="mb-3">
					<label for="edad" class="form-label">Edad</label>
					<input type="text" class="form-control" id="edad" name="edad" tabindex="1"  required>                        
				  </div>                                                             
				  <button type="submit" class="btn btn-primary" tabindex="5">Guardar</button>
				  <a href="/clinica/profile/view/Home.jsp" class="btn btn-secondary">Cancelar</a>
			  </form>
			<%
			String message=(String)session.getAttribute("cliente_message");
			if(message!=null){
			out.println(message);
			session.removeAttribute("cliente_message");
			}
			%>      
		  </div>
	  </div>     
</div>
<%
 }
%>

<script src="js/validaciones.js"></script>
</body>
</html>