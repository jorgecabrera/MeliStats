<div class="jumbotron"
	style="float: left; margin-left: 10px; width: 400px; height: 200px; margin-top: 20px; width: 400px; height: 200px;">
	<g:if test="${it != null}">
		<div align=center class="alert alert-info" role="alert">
			<h4>
				<a
					href="/MeliStats/estadisticas/${it.descripcion}">
					${it.descripcion}
				</a>
			</h4>
			<div>
				<img src='${it.getImagen()}' height='80'
					width='80'>
			</div>
		</div>
	</g:if>
</div>