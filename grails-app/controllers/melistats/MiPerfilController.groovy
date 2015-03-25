package melistats

class MiPerfilController {


    def nuevaPref(){
     	if(Preferencia.findByNombrePref(params.nombrePref)==null){
     		def nombre = params.nombrePref
     		def precio = params.precioPref
     		def envio = params.envioPref
     		def reputacion = params.reputacionPref

     		Preferencia p1 = new Preferencia(nombrePref: nombre, precioPref: precio, envioPref: envio, reputacionPref: reputacion);
     		p1.save(failOnError:true)
     		flash.message = "success"
     		redirect(action: 'index')
     	}else{
			flash.message = "error"
			redirect(action:'index')
		}
	}

	def deletePref(){
		def idPreferencia = params.idPreferencia
		def pref = Preferencia.get(idPreferencia as long)
		pref.delete(flush:true, failOnError:true)
		redirect(action:'index')

	}

	def editPref(){
		def idPreferencia = params.idPreferencia
		def pref = Preferencia.get(idPreferencia as long)
		pref.nombrePref = params.nombrePref
		pref.precioPref = params.precioPref
		pref.envioPref = params.envioPref
		pref.reputacionPref = params.reputacionPref
		pref.save(failOnError:true)
		redirect(action:'index')
	}


    def index() {
    	[preferencias:Preferencia.list()]
    }


}


