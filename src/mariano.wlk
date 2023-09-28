import golosinas.*

object mariano {
	var bolsaGolosinas = []
	var golosinas
	
	method comprar(unaGolosina){bolsaGolosinas.add(unaGolosina)}
	method desechar(unaGolosina){bolsaGolosinas.remove(unaGolosina)}
	method cantidadDeGolosinas() = bolsaGolosinas.size()
	method tieneLaGolosina(unaGolosina) = bolsaGolosinas.contains(unaGolosina)
	method probarGolosinas() {bolsaGolosinas.forEach({golosina => golosina.morder()})}
	method hayGolosinaSinTACC() = bolsaGolosinas.any({golosina => golosina.libreDeGluten()})
	method preciosCuidados() = bolsaGolosinas.all({golosina => golosina.precio()<= 10})
	method golosinaDeSabor(unSabor) = bolsaGolosinas.find({golosina => golosina.sabor()== unSabor})
	method golosinasDeSabor(unSabor) = bolsaGolosinas.filter({golosina => golosina.sabor()==unSabor })
	method sabores() = bolsaGolosinas.map({golosina => golosina.sabor()}).asSet()
	method golosinaMasCara() = bolsaGolosinas.max({golosina => golosina.precio()})
	method pesoGolosinas() = bolsaGolosinas.sum({golosina => golosina.peso()})
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.diference(bolsaGolosinas).asList
	method gustosFaltantes(gustosDeseados){}
}
