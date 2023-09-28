
object bombon {
	var peso = 15
	
	method peso() = peso
	method precio() = 5
	method sabor() = "frutilla"
	method libreDeGluten() = true
	method morder() {peso = (peso * 0.8) - 1}
}

object alfajor {
	var peso = 300 
	
	method peso() = peso
	method precio() = 15
	method sabor() = "chocolate"
	method libreDeGluten() = false
	method morder() {peso *= 0.8}

}

object caramelo {
	var peso = 5
	
	method peso() = peso
	method precio() = 1
	method sabor() = "frutilla"
	method libreDeGluten() = true
	method morder() {peso --}

}
object chupetin {
	var peso = 7
	
	method peso() = peso
	method precio() = 2
	method sabor() = "naranja"
	method libreDeGluten() = true
	method morder() {if (peso >= 2) peso *= 0.9 }
}
object oblea {
	var peso = 250
	
	method peso() = peso
	method precio() = 5
	method sabor() = "vainilla"
	method libreDeGluten() = false
	method morder() {if(peso > 70) peso *= 0.5 else peso *= 0.75}
}
object chocolatin {
	var property pesoInicial = 0
	var peso = pesoInicial
	
	method peso() = peso
	method precio() = 0.5 * peso 
	method sabor() = "chocolate"
	method libreDeGluten() = false
	method morder() {peso -= 2 }
}
object golosinaBaniada {
	var property golosinaBase = caramelo
	var pesoBaniado = 4
	
	method peso() = golosinaBase.peso() + pesoBaniado
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method libreDeGluten() = golosinaBase.libreDeGluten()
	method morder() { 
		pesoBaniado = 0.max(pesoBaniado - 2)
		golosinaBase.morder()
	}
}

object pastillaTutiFrutti{
	var property libreDeGluten = true
	const sabores = ["frutilla","chocolate","naranja"]
	var mordida = 0
	
	method peso() = 5
	method precio() = if(libreDeGluten) 7 else 10
	method sabor() = sabores.get(mordida)
	method morder()	{ mordida = (mordida + 1) % sabores.size() }
	
}























