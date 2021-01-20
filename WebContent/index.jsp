<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		<title>Formulario</title>
	</head>
	
	<body>
		<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6">
						<form action="FormularioServlet" method="post">
							<h4 class="mt-4 mb-2">Formulario</h4>
								<div class="form-group">
									<label for="nombre">Nombre</label>
									<input type="text" class="form-control" id="nombre" name="nombre" required/>
								</div>
					
								<div class="form-group">
									<label for="apellido">Apellido</label>
									<input type="text" class="form-control" id="apellido" name="apellido" required/>
								</div>
								
								<div class="form-group">
									<label for="email">Correo Electrónico</label>
									<input type="email" class="form-control" id="email" name="email" required/>
								</div>
								
								<div class="form-group">
									<label for="edad">Edad</label>
									<input type="text" class="form-control" id="edad" name="edad" required/>
								</div>
								
								<input type="submit" class="btn btn-info btn-block" id="guardar" value="Guardar">
								
								<div class="form-group mt-4">
								<label for="mostrar">Nombre completo</label>
								<input type="text" class="form-control" id="mostrar" name="mostrar" disabled value="<% 
										if(request.getSession().getAttribute("nombreCompleto")== null){
											out.println("");
										}else {
											out.println(request.getSession().getAttribute("nombreCompleto"));
											}	
								%>"
								/>
								</div>	
								
								<div class="form-group mt-4">
								<label for="mostrare">Edad</label>
								<input type="text" class="form-control" id="mostrare" name="mostrare" disabled value="<% 
										if(request.getSession().getAttribute("rango")== null){
											out.println("");
										}else {
											out.println(request.getSession().getAttribute("rango"));
											}	
								%>"
								/>
								</div>	
								
								<div class="form-group mt-4">
								<label for="mostrarm">Correo electrónico</label>
								<input type="text" class="form-control" id="mostrarm" name="mostrarm" disabled value="<% 
										if(request.getSession().getAttribute("mayorEdad")== null){
											out.println("");
										}else {
											out.println(request.getSession().getAttribute("mayorEdad"));
											}	
								%>"
								/>
								</div>								
						</form>
					</div>
				</div>
			</div>
		</main>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
	</body>
</html>