<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Consultas Recetas</title>
</head>
<body>
<div style="width: 90%; padding: 15pt;">
		<g:render template="titulo" model="['titulo': 'Consulta Recetas']"/>
	
	<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">${consultas.descripcion}
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
										<g:each in="${consultas.resultados}" status="i"
											var="recetaInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td>
												
												<g:if test="${recetaInstance.sosPublica()}">
												<g:link action="showReceta" id="${recetaInstance.nombreDelPlato}">
														${recetaInstance.nombreDelPlato}
													</g:link>
												</g:if>
												
												<g:else>
												<g:link action="showReceta" id="${recetaInstance.nombreDelPlato}" style="color:#FF0000">
														${recetaInstance.nombreDelPlato}
														</g:link>
												</g:else>
											<!-- 
												<g:link action="showReceta" id="${recetaInstance.nombreDelPlato}">
														${recetaInstance.nombreDelPlato}
													</g:link>
													 -->
												</td>
												<td>
													${recetaInstance.caloriasReceta}
												</td>
												<td>
													${recetaInstance.dificultad}
												</td>
												<td>
													${recetaInstance.temporada}
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
</body>
</html>
