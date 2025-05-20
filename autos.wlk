import dependencias.*
object corsa {
  var color = null

  method capacidad() = 4
  
  method velocidadMaxima() = 150

  method peso() = 1300

  method color() = color

  method informarColor(unColor) {color = unColor}
}

object kwid {
  var property tieneTanque = false

  const peso = 1200

  method capacidad() = if(tieneTanque) 3 else 4

  method velocidadMaxima() = if(tieneTanque) 120 else 110

  method peso() = if(tieneTanque) peso + 150 else peso 

  method color() = "azul"
}

object trafic {
  var property interiorActual = comodo
  var property motorActual = pulenta
  const peso = 4000

  method capacidad() = interiorActual.capacidad()

  method velocidadMaxima() = motorActual.velocidadMaxima()

  method peso() = peso + interiorActual.peso() + motorActual.peso()

  method color() = "blanco"
}

  object comodo {
    method capacidad() = 5

    method peso() = 700
  }

  object popular {
    method capacidad() = 12

    method peso() = 1000
  }

  object pulenta {
    method velocidadMaxima() = 130

    method peso() = 800
  }

  object bataton {
    method velocidadMaxima() = 80

    method peso() = 500
  }

object autosEspeciales {
  var property capacidad = null

  var property velocidadMaxima = null

  var property peso = null

  var property color = null 
}
