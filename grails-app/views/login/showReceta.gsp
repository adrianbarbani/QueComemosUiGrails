<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
</head>
<body>
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Detalle de Receta</h4>
			</div>
			<div class="modal-body">
				
				<div class="center-block"  style=" border-style: solid; width: 95%" >
							<div class="center-block" style="width: 98%">
							<h4>
								${Receta.unaReceta.nombreDelPlato}
							</h4>
							<ul class="list-inline">
								<li>
									${Receta.unaReceta.caloriasReceta} calorias
								</li>
								<li>${Receta.propietario}</li>
							</ul>
							</div>
					</div>
			
			<div  class="center-block" style="width: 95%" >
					<table style="width: 100%; height:90%">
						
						<tr>
							<td>
								<strong>Dificultad</strong>
								<p>${Receta.unaReceta.dificultad}</p>
							</td>
							
							
							<td>
								<strong>Temporada</strong>
								<p>${Receta.unaReceta.temporada}</p>
							</td>
						</tr>
						
						
						<tr>
							<td>
								<strong>Ingredientes</strong>
							</td>
							<td>
							<strong>Condimentos</strong>
							</td>
						</tr>
						<tr>								
							<td>
								<table class="table table-bordered">
									<thead>
										<tr>
										<th>Dosis</th>
										<th>Ingredientes</th>
										</tr>
									</thead>
									<tbody>
										<g:each in="${Receta.unaReceta.ingredientes}" status="i"
											var="recetaIngrediente">
											<tr>
												<td>
													${recetaIngrediente.cantidad}
												</td>
												<td>
													${recetaIngrediente.nombre}
												</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</td>
							<td>
									<div  class="center-block" style=" border-style: solid; width: 90%; height:100%">
									<g:each in="${Receta.unaReceta.condimentos}" status="i"
											var="recetaCondimento">
											<p>
													${recetaCondimento.nombre}
											</p>
									</g:each>	
									</div>
							</td>
							</tr>
							<tr>
								<td>
								<g:checkBox disabled="true" name="Favorita" value="${consulta?.filtrosAplicados}"/> Agregar Receta a mis favoritas
								</td>
								<td>
									<strong>Condiciones Preexistentes</strong>
									<div  class="center-block" style=" border-style: solid; width: 90%; height:100%">
									<g:each in="${Receta.unaReceta.paraQueCondicionesSoyInadecuada}" status="i"
											var="recetaCondiciones">
											<p>
													${recetaCondiciones.nombre}
											</p>
									</g:each>	
									</div>
								</td>
							</tr>	
						
					</table>
			</div>	
				
			</div>
			
			
			
			<div  class="center-block" style=" border-style: solid; width: 90%; background-color: #CDCDCD" >
				
				<p class="text-center">${Receta.unaReceta.explicacionDeLaPreparacion}</p>
				
			</div>
			
			<div class="modal-footer">
					<g:link controller='login' action="volver" class="btn btn-primary">Volver</g:link>
				
				<!-- <button type="button" class="btn btn-default" data-dismiss="modal">Volver</button>
				<button type="button" class="btn btn-primary">Copiar Receta</button> -->
				
				<g:link controller= "login" action="copiarLaReceta" class="btn btn-primary" id="${Receta.unaReceta.nombreDelPlato}">Copiar</g:link>
				
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</body>
</html>
