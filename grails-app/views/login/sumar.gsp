<html>
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
										<g:sortableColumn property="autor" title="Autor" />
										<g:sortableColumn property="titulo" title="T&iacute;tulo"/>
										<g:sortableColumn property="editorial" title="Editorial"/>
										<g:sortableColumn property="anioPublicacion" title="A&ntilde;o Publicaci&oacute;n" />
									</thead>
									<tbody>
										<g:each in="${libroInstanceList}" status="i"
											var="libroInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td><g:link action="show" id="${libroInstance.id}">
														${libroInstance.autor}
													</g:link></td>
												<td>
													${libroInstance.titulo}
												</td>
												<td>
													${libroInstance.editorial}
												</td>
												<td>
													${libroInstance.anioPublicacion}
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