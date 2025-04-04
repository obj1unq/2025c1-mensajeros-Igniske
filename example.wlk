/** First Wollok example */

object paquete{
	var pago = true;

	method sePuedeEntregar(mensajero, destino){
			return pago && destino.evaluarSiPuedePasar(mensajero)
	}

	method pago(){
		return pago;
	}

	method pago(_pago){
		pago = _pago;
	}
}

	object puenteDeBrooklyn{
		method evaluarSiPuedePasar(mensajero){
			return mensajero.pesoTotal() <= 1000
		}
	}

	object laMatrix {
		method evaluarSiPuedePasar(mensajero){
			return mensajero.llamar();
		}
	}

	object chuckNorris{
		const metodoDeTransporte = aPie;
		const peso = 900;

		method peso(){
			return peso;
		}

		method pesoTotal(){
			return self.peso() + metodoDeTransporte.peso();
		}
	
		method llamar(){
			return true;
		}
	}

	object neo{
		const metodoDeTransporte = vuelo;
		const peso = 0;
		const credito = 100

		method peso(){
			return peso;
		}

		method pesoTotal(){
			return self.peso() + metodoDeTransporte.peso();
		}

		method llamar(){
			return credito > 0;
		}
	}

	object lincolnHawk{
		var metodoDeTransporte = bicicleta;
		var peso = 0;

		method peso(){
			return peso;
		}

		method peso(_peso){
			peso = _peso;
		}

		method metodoDeTransporte(){
			return metodoDeTransporte;
		}

		method metodoDeTransporte(_transporte){
			metodoDeTransporte = _transporte;
		}

		method pesoTotal(){
			return self.peso() + metodoDeTransporte.peso();
		}

		method llamar(){
			return false;
		}
	}

	object aPie{
		const peso = 0;

		method peso(){
			return peso;
		}
	}

	object vuelo{
		const peso = 0;

		method peso(){
			return peso;
		}
	}

	object bicicleta{
		const peso = 10;

		method peso(){
			return peso;
		}
	}

	object camion{
		//No me queda claro si utilizar const o var para los acoplados. Para hacer las pruebas lo deje como un var.
		var acoplados = 0
		const pesoCamion = 500
		var peso = pesoCamion + (acoplados * 500);

		method acoplados(){
			return acoplados;
		}

		method acoplados(_acoplados){
			acoplados = _acoplados;
		}

		method peso(){
			return peso;
		}

		method peso(_acoplados){
			peso = pesoCamion + (_acoplados * 500); 
		}
	}
