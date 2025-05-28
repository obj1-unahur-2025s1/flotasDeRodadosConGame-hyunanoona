import dependencias.*
class Corsa {
  var property color

  method capacidad() = 4
  
  method velocidadMaxima() = 150

  method peso() = 1300

  method initialize() {
    if (not colores.validos().contains(color)) self.error(color.toString() + " no es un color valido")
  }
}

class Kwid {
  var tieneTanque
  const peso = 1200

  method capacidad() = if(tieneTanque) 3 else 4

  method velocidadMaxima() = if(tieneTanque) 120 else 110

  method peso() = if(tieneTanque) peso + 150 else peso 

  method color() = azul
}

object trafic {
  var interior = null
  var motor = null
  const peso = 4000

  method capacidad() = interior.capacidad()

  method velocidadMaxima() = motor.velocidadMaxima()

  method peso() = peso + interior.peso() + motor.peso()

  method color() = blanco

  method asignarInterior(unInterior) {interior = unInterior}

  method asignarMotor(unMotor) {motor = unMotor}
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
object colores {
  method validos() = #{rojo, verde, blanco, azul, beige, negro} 
}

object rojo {}

object verde {}

object blanco {}

object azul {}

object beige {}

object negro {}