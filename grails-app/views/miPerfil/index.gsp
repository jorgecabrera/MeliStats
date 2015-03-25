<!DOCTYPE html>


<html>
	<head>
 	<meta name="layout" content="_layout"/>
	<title> Mi perfil</title>
	</head>
	

	<body>
		<div class="container" style="width:92%">
			<div style="position:relative; top:50px;"> 
				<aside style="font-style: arial; float: left; margin-left:70px">
					<h1 style="margin-left: -35px; text-align: left; color: #000;"> <span class="label label-danger">Mis preferencias</span> </h1>

						<input class="btn btn-danger" style="width: 42px; height: 41px; margin-top: -72px; margin-left: 222px; font-weight: bold; font-size: 20px;" type="button" value="+" data-toggle="modal" data-target="#myModal"></input>

   						<!--<li class="active"><a href="#" data-toggle="modal" data-target="#myModal">Crear Preferencia <span class="sr-only">(current)</span></a></li> -->
						<div class="modal fade bs-example-modal-sm" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		  					<div class="modal-dialog">
								<div class="modal-content">
				      				<div class="modal-header">
				        				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				        				<h4 class="modal-title" style="text-align: center" id="myModal">Agregar Preferencia</h4>
		      						</div>

		    						<div class="modal-body">
		        						<div class="container marketing" style="width: 80%; text-align:center">	
			     							<div class="row featurette">
			          							<g:form controller="MiPerfil" action="nuevaPref" method="post">
							                       <div>
				                        				<h4 class="featurette-heading">¿Qué nombre le quiere dar a la preferencia?</h4>
	        			                				<input type="text" placeholder="Ingrese el nombre elegido para la preferencia" id="campoNombre" style="width:100%;" name="nombrePref" required>
				                    				</div> <br>
	        			            				<div>
	                    			    				<h4 class="featurette-heading">¿Cuánto le importa el precio?</h4>
				                        				<div> Poca importancia &nbsp&nbsp Mucha importancia</div> 
				                        				<input type="range" min="0" max"10" placeholder="Elija la importancia que le da al precio" id="campoPrecio" name="precioPref" value="" >
	        			            				</div> <br>
		                    						<div>
							                        	<h4 class="featurette-heading">¿Cuánto le importa el envío gratis? </h4>
	    			    			                	<div> Poca importancia &nbsp&nbsp Mucha importancia</div> 
	    			    			                	<input type="range" min="0" max"10" placeholder="Elija la importancia que le da al envío gratis" id="campoEnvio" name="envioPref" value="" >
					                    			</div> <br>
				        				            <div>
		                	    			    		<h4 class="featurette-heading">¿Cuánto le importa la reputación del vendedor?</h4>
				                    	    			<div> Poca importancia &nbsp&nbsp Mucha importancia</div> 
				                    	    			<input type="range" min="0" max"10" placeholder="Elija la importancia que le da a la reputación del vendedor" id="campoReputacion" name="reputacionPref" value="" >
	                    							</div>
	                    							<br><br>

				                       				<button id="botonAgregarPreferencia" class="btn btn-danger" controller="MiPerfil" action="nuevaPref"><a style="color: white">Agregar Preferencia</a> </button>
			     				               </g:form>  
	    
	    		                				<script>
													function colorearCampo() {
														var campo = $(this);
														var contenido = campo.val();
														if(contenido != "")
															campo.removeClass("invalid").addClass("valid");
														else
														   	campo.removeClass("valid").addClass("invalid");
													}

													$("#campoNombre").on("input",colorearCampo);
													$("#campoApellido").on("input",colorearCampo);
													$("#botonAgregarEmpleado").click(function (event){
							    					var validadoOK = true;
													var elemento = $("#campoNombre");
													if(!elemento.hasClass("valid")){
														validadoOK = false;
													}

													var elemento = $("#campoPrecio");
													if(!elemento.hasClass("valid")){
														validadoOK = false;
													}


													var elemento = $("#campoEnvio");
													if(!elemento.hasClass("valid")){
														validadoOK = false;
													}


													var elemento = $("#campoReputacion");
													if(!elemento.hasClass("valid")){
														validadoOK = false;
													}

													if(!validadoOK){
														event.preventDefault();
													}
												</script>
					         				</div>  
					      				</div>
					    			</div>
								</div>
							</div>
						</div>



						

					<g:each in="${preferencias}" var="pref">
						<div class="jumbotron" style="width: 450px; height: 250px; position: relative; margin-left: -50px; margin-bottom: -11px;">
							<div style="margin-top: -38px; margin-left: 5px;"> <h4 id="campoNombre${pref.id}">${pref.nombrePref}</h4></div>
							<div style="margin-left: 5px;"> Importancia precio: <input type="range" min="0" max"10" placeholder="Elija la importancia que le da al precio" id="campoPrecio${pref.id}" name="precioPref" value="${pref.precioPref}" disabled></div>
							<div style="margin-left: 5px;"> Importancia envío gratis: <input type="range" min="0" max"10" placeholder="Elija la importancia que le da al precio" id="campoEnvio${pref.id}" name="precioPref" value="${pref.envioPref}" disabled></div>
							<div style="margin-left: 5px;"> Importancia reputación del vendedor: <input type="range" min="0" max"10" placeholder="Elija la importancia que le da al precio" id="campoVendedor${pref.id}" name="precioPref" value="${pref.reputacionPref}" disabled></div>

							<script>
								function editarPreferencias(){
									$("#campoPrecio${pref.id}").removeAttr('disabled')
									$("#campoEnvio${pref.id}").removeAttr('disabled')
									$("#campoVendedor${pref.id}").removeAttr('disabled')
								}
							</script>

							<input type="submit" class="btn btn-danger" style="margin-left: 5px; margin-top:10px;"value="Editar" id="btnEdit${pref.id}" onClick="editarPreferencias()" name="editar" />
							

							<g:form controller="MiPerfil" action="deletePref">
								<input type="hidden" name="idPreferencia" value="${pref.id}" />
								<input type="submit" class="btn btn-danger" style="margin-left: 76px; margin-top: -56px;" value="Eliminar" id="btnDelete" controller="MiPerfil" action="deletePref" name="deletePref"/>
							</g:form>
						</div><br><br>
					</g:each>
				</aside>
			</div>
		
			<div style="position:relative; top:50px; left:50px"> 
				<aside style="font-style: arial; float: right; margin-right:450px">
					<h1 style="text-align:center; color: #000;"> <span class="label label-danger">Mis búsquedas</span></h1>
				</aside>
			</div>
		</div>

	</body>
</html>

