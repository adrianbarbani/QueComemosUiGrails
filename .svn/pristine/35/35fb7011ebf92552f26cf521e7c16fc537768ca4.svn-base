<%@ page import="ar.edu.clientes.Cliente"%>
<%@ page import="ar.edu.clientes.converters.Conversor"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
</head>
<body>
	<div style="width: 90%; padding: 15pt;">
		<div class="clearfix content-heading">
			<h1>&nbsp;Clientes</h1>
		</div>

		<div class="panel-group" id="accordionBusqueda">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordionBusqueda" href="#collapseOne">
						Par&aacute;metros de b&uacute;squeda </a>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<form class="form-search">
							<div class="row">
  								<div class="col-md-5">
									<label>Saldo desde:</label> 
									<input type="text" name="desde" id="desde" class="form-control" placeholder="Desde..." value="${clienteBusqueda?.desde}">
								</div>
								<div class="col-md-5">
									<label>Hasta:</label> 
									<input type="text" class="form-control" name="hasta" id="hasta" placeholder="Hasta..." value="${clienteBusqueda?.hasta}">
								</div>
	 							<div class="col-md-2">
	 								<br>
									<button type="submit" class="btn btn-primary" title="Buscar clientes">
										<span class="glyphicon glyphicon-search">
										</span>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordionResultados">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordionResultados" href="#collapseTwo"> Resultados 
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="cliente-libro" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="nombre"	title="Nombre" />
										<g:sortableColumn property="saldo" title="Saldo" style="text-align: right;"/>
										<g:sortableColumn property="montoCredito" title="Monto de crédito" style="text-align: right;"/>
									</thead>
									<tbody>
										<g:each in="${clientes}" status="i"	var="cliente">
											<g:set var="montoCredito" value="${cliente.montoCredito()}"/>
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td>
													${cliente.nombre }
												</td>
												<td style="text-align: right;">
													<g:if test="${cliente.esMoroso()}">
														<h4><span class="label label-danger">
														${Conversor.convertir(cliente.saldo())}
														</span></h4>
													</g:if>
													<g:else>
														<h4><span class="label label-success">
														Sin deuda
														</span></h4>
													</g:else>
												</td>
												<td style="text-align: right;">
													${montoCredito ? Conversor.convertir(montoCredito) : "Sin línea de crédito" }
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
		</div>
	</div>
</body>
</html>

