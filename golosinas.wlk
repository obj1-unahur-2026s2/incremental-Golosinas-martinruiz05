class Golosinas {
    method precio()
    method peso()
    method sabor()
    method gluten()
    method recibirMordisco()
}

class Bombon inherits Golosinas {
    var peso = 15
    override method precio(){
        return 5
    }
    override method peso(){
        return peso
    }

    override method sabor(){
        return "frutilla"
    }

    override method gluten(){
        return false
    }

    override method recibirMordisco(){
        peso =(peso * 0.8) - 1
    }

}

class Alfajor inherits Golosinas {
    var peso = 300
    override method precio(){
        return 12
    }
     override method peso(){
        return peso
    }
     override method sabor(){
         return "chocolate"
    }
     override method gluten(){
         return true
     }
    override method recibirMordisco(){
        peso = peso * 0.8
    }
}

class Caramelo inherits Golosinas {
    var peso = 5
    override method precio(){
        return 1
    }
    override method peso(){
        return peso
    }
    override method sabor(){
        return "frutilla"
    }
     override method gluten(){
        return false
    }
    override method recibirMordisco(){
        peso = peso -1
    }

}

class Chupetin inherits Golosinas {
    var peso = 7
    override method precio(){
        return 2
    }
    override method peso(){
        return peso
    }
    override method sabor(){
        return "naranja"
    }
    override method gluten(){
        return false
    }
    override method recibirMordisco(){
        if (peso >= 2) {
            peso = peso * 0.9
        }
    }
}

class Oblea inherits Golosinas {
    var peso = 250
    override method precio(){
        return 5
    }
    override method peso(){
        return peso
    }
    override method sabor(){
        return "vainilla"
    }
    override method gluten(){
        return true
    }
    override method recibirMordisco(){
        if (peso > 70) {
            peso = peso * 0.5
        } else {
            peso = peso * 0.75
        }
    }
}

class Chocolatin inherits Golosinas {
    var peso = 0
    var pesoInicial = 0

    method initialize(unPesoInicial) {
        peso = unPesoInicial
        pesoInicial = unPesoInicial
    }

    override method precio(){
        return pesoInicial * 0.5
    }
    override method peso(){
        return peso
    }
    override method sabor(){
        return "chocolate"
    }
    override method gluten(){
        return true
    }
    override method recibirMordisco(){
        peso = peso - 2
    }
}

class GolosinaBaniada inherits Golosinas {
    var base
    var pesoBanio = 4

    method initialize(unaGolosinaBase) {
        base = unaGolosinaBase
    }

    override method precio(){
        return base.precio() + 2
    }
    override method peso(){
        return base.peso() + pesoBanio
    }
    override method sabor(){
        return base.sabor()
    }
    override method gluten(){
        return base.gluten()
    }
    override method recibirMordisco(){
        base.recibirMordisco()
        if (pesoBanio > 0) {
            pesoBanio = pesoBanio - 2
        }
    }
}

class PastillaTuttiFrutti inherits Golosinas {
    var libreDeGluten
    var saborActual = "frutilla"

    method initialize(esLibreDeGluten) {
        libreDeGluten = esLibreDeGluten
    }

    override method precio(){
        if (libreDeGluten) {
            return 7
        } else {
            return 10
        }
    }
    override method peso(){
        return 5
    }
    override method sabor(){
        return saborActual
    }
    override method gluten(){
        return !libreDeGluten
    }
    override method recibirMordisco(){
        if (saborActual == "frutilla") {
            saborActual = "chocolate"
        } else {
            if (saborActual == "chocolate") {
                saborActual = "naranja"
            } else {
                saborActual = "frutilla"
            }
        }
    }
}