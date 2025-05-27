import dependencias.*
class Corsa {
  var color

  method capacidad() = 4
  
  method velocidadMaxima() = 150

  method peso() = 1300

  method color() = color
}

class Kwid {
  var tieneTanque
  const peso = 1200

  method capacidad() = if(tieneTanque) 3 else 4

  method velocidadMaxima() = if(tieneTanque) 120 else 110

  method peso() = if(tieneTanque) peso + 150 else peso 

  method color() = azul
}

class Trafic {
  var interior 
  var motor
  const peso = 4000

  method capacidad() = interior.capacidad()

  method velocidadMaxima() = motor.velocidadMaxima()

  method peso() = peso + interior.peso() + motor.peso()

  method color() = blanco
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

class AutoEspecial {
  var capacidad 
  var velocidadMaxima
  var peso
  var color 

  method capacidad() = capacidad

  method velocidadMaxima() = velocidadMaxima

  method peso() = peso

  method color() = color
}

// colores 

object rojo {}

object verde {}

object blanco {}

object azul {}

object beige {}

object negro {}