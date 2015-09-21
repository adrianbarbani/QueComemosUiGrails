<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Consultas Recetas</title>
</head>
<body>
<div class="panel-group" id="accordion2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Resultados:
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="list-libro" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="autor" title="Nombre del Plato" />
										<g:sortableColumn property="titulo" title="Calorias Receta"/>
										<g:sortableColumn property="editorial" title="Dificultad"/>
										<g:sortableColumn property="anioPublicacion" title="Temporada" />
									</thead>
									<tbody>
										<g:each in="${consultas}" status="i"
											var="libroInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td><g:link action="show" id="${libroInstance.resultados.nombreDelPlato}">
														${libroInstance.resultados.nombreDelPlato}
													</g:link></td>
												<td>
													${libroInstance.resultados.caloriasReceta}
												</td>
												<td>
													${libroInstance.resultados.dificultad}
												</td>
												<td>
													${libroInstance.resultados.temporada}
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