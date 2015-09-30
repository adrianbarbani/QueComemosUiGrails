<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Consultas Recetas</title>
</head>
<body>
<div style="width: 90%; padding: 15pt;">
		<g:render template="titulo" model="['titulo': 'Consulta Recetas']"/>
	
		
		
		<div class="panel-group" id="accordion1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse"
						data-parent="#accordion1" href="#collapseOne">
						Par&aacute;metros de b&uacute;squeda
					</a>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<form>
							<div class="row">
  								<div class="col-md-6">
									<label>Nombre de la Receta</label> 
									<input type="text" name="nombreReceta" id="nombreReceta" class="form-control" placeholder="Contiene..." value="${consultas?.nombre}"> 
  								</div>
  								<div class="col-md-6">
									<label>Calorias</label> 
									<ul class="list-inline">
								<li>
									<input type="number" class="form-control" name="caloriasDesde" id="caloriasDesde" placeholder="Desde" value="${consultas?.caloriasDesde}">									
								</li>
								<li>
									<input type="number" class="form-control" name="caloriasHasta" id="caloriasHasta" placeholder="hasta" value="${consultas?.caloriasHasta}"></li>
								</ul>
  								</div>
  								<div class="col-md-6">
									<label>Dificultad</label> 
									<g:select name="dificultad" from="${repoDeDificultades?.todasLasDificultades}"/>
  								</div>
  								<div class="col-md-6">
									<label>Temporada</label> 
									<g:select name="temporada" from="${repoDeTemporadas?.todasLasTemporadas}"/>
  								</div>
  								<div class="col-md-6">
									<label>Que Contenga Ingrediente</label> 
									<input type="text" name="ingrediente" id="ingrediente" class="form-control" placeholder="Contiene..." value="${consultas?.ingredienteABuscar}"> 
  								</div>
  								<div class="col-md-6">
									<g:checkBox disabled="false" name="filtroDeUsuario" value="${consultas}"/> Aplicar filtros de usuario
  								</div>
  								
  								<div class="col-md-12">
									<br />
									<g:actionSubmit controller="login" action="buscarPorParametros" class="btn btn-primary" value="Buscar"/>
										
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
	
	
	<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">${consultas?.descripcion}
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="list-recetas" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<tr>
											<td>Nombre Del Plato</td>
											<td>Calorias Receta</td>
											<td>Dificultad</td>
											<td>Temporada</td>
										</tr>
									</thead>
									<tbody>
										<g:each in="${consultas?.resultados}" status="i"
											var="recetaInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td>
													<g:link action="showReceta" id="${recetaInstance.nombreDelPlato}" class="${recetaInstance.sosPublica() ? "publica" : "privada" }">
														${recetaInstance?.nombreDelPlato}
													</g:link>
												</td>
												<td>
													${recetaInstance?.caloriasReceta}
												</td>
												<td>
													${recetaInstance?.dificultad}
												</td>
												<td>
													${recetaInstance?.temporada}
												</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
						</div>
					</div>							
				</div>
			<g:link controller="login" action="index" class="btn btn-primary">
				Salir
				</g:link>

			</div> 
</div>
</div>
</body>
</html>
