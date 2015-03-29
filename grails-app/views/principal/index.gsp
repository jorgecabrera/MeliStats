<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="_layout" />
<title>MeliStats</title>
</head>
<body>
	<div>
		<h1>
			<span class="label label-success" style="background-color: #D9534F;">Búsquedas más realizadas</span>
		</h1>
		<g:render template="busqueda" bean="${busquedasMasRealizadas[0]}" />
		<g:render template="busqueda" bean="${busquedasMasRealizadas[1]}" />
		<g:render template="busqueda" bean="${busquedasMasRealizadas[2]}" />
	</div>


	<div>
		<h1>
			<span class="label label-success" style="background-color: #D9534F;">Búsquedas recientes</span>
		</h1>
		<g:render template="busqueda" bean="${busquedasMasRecientes[0]}" />
		<g:render template="busqueda" bean="${busquedasMasRecientes[1]}" />
		<g:render template="busqueda" bean="${busquedasMasRecientes[2]}" />
	</div>
</body>
</html>