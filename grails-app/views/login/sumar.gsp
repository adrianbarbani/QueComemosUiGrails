<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Consultas Recetas</title>
</head>
<body>
<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Estas fueron tus ultimas consultas:
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="list-recetas" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="nombreDelPlato" title="Nombre del Plato" />
										<g:sortableColumn property="caloriasReceta" title="Calorias Receta"/>
										<g:sortableColumn property="dificultad" title="Dificultad"/>
										<g:sortableColumn property="temporada" title="Temporada" />
									</thead>
									<tbody>
										<g:each in="${consultas.resultados}" status="i"
											var="recetaInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td><g:link action="show" id="${recetaInstance.nombreDelPlato}">
														${recetaInstance.nombreDelPlato}
													</g:link></td>
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
			</div> 
</body>
</html>