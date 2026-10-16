object Mariano {
    const goloQueTiene = []
    var compraParaDesechar = null

    method comprar(unaGolosina){
        goloQueTiene.add(unaGolosina)
        compraParaDesechar = unaGolosina
    }
    method desechar(unaGolosina){
        goloQueTiene.remove(unaGolosina)
    }
    method cantidadDeGolosinas(){
        return goloQueTiene.size()
    }
    method tieneLaGolosina(unaGolosina){
        return goloQueTiene.any({g=>g == unaGolosina})
    }

    method probarGolosinas(){
        goloQueTiene.forEach({g=>g.recibirMordisco()})
    }
    method golosinaSinTacc(){
       return goloQueTiene.any({g=>!g.gluten()})
    }
    method preciosCuidados(){
       return goloQueTiene.all({g=>g.precio() <= 10})
    }
    method golosinaDeSabor(unSabor){
        return goloQueTiene.find({g=>g.sabor() == unSabor})
    }
    method golosinasDeSabor(unSabor){
        return goloQueTiene.filter({g=>g.sabor() == unSabor})
    }
    method sabores(){
        return goloQueTiene.map({g=>g.sabor()}).asSet()
    }
    method cantidadGolosinasDeSabor(unSabor){
        return goloQueTiene.filter({g=>g.sabor() == unSabor}).size()
    }
    method saborMasPopular(){
        return goloQueTiene.map({g=>g.sabor()}).asSet().max({s=>self.cantidadGolosinasDeSabor(s)})
    }
    method golosinaMasCara(){
        return goloQueTiene.max({g=>g.precio()})
    }
    method pesoGolosinas(){
        return goloQueTiene.sum({g=>g.peso()})
    }
    method golosinasFaltantes(golosinasDeseadas){
       return goloQueTiene.difference(golosinasDeseadas)
    }
    method golosinasDeseadas(golosinasDeseadas){
       return goloQueTiene.golosinasFaltantes(golosinasDeseadas).intersection(golosinasDeseadas)
    }
  method gustosFaltantes(gustosDeseados){
    return goloQueTiene.sabores().diferrence(gustosDeseados)
  }
  method gastoEn(sabor){
    return goloQueTiene.filter({g=>g.sabor() == sabor}).sum({g=>g.precio()})
  }
  method comproYDesecho(golosina){
    if(compraParaDesechar == golosina){
        goloQueTiene.desechar(golosina)
    }
    

  }
  method baniar(unaGolosina){
        if(self.tieneLaGolosina(unaGolosina)){
             
        }
    }
  
}