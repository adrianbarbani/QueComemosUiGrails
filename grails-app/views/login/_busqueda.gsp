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
									<input type="text" name="nombreReceta" id="nombreReceta" class="form-control" placeholder="Nombre" value="${consultas?.nombre}"> 
  								</div>
  								<div class="col-md-6">
									<label>Calorias</label> 
									<ul class="list-inline">
								<li>
								<strong>Desde:</strong>
								</li>
								<li>
									<input type="number" class="form-control" name="caloriasDesde" id="caloriasDesde" placeholder="Desde" value="${consultas?.caloriasDesde}">									
								</li>
								<li>
								<strong>Hasta:</strong>
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
