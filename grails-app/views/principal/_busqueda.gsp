<div class="col-md-4">
	<div class="jumbotron">
		<g:if test="${it != null}">
			<div class="alert alert-info" role="alert">
				<h4>
					<a href="${createLink(controller: 'estadistica', action: 'index', params: [busqueda: it.descripcion])}">
						${it.descripcion}
					</a>
				</h4>
				<div>
					<img src='${it.getImagen()}' height='80' width='80'>
				</div>
			</div>
		</g:if>
	</div>
</div>