class Pedido{
    var distanciaARecorrer
    var tiempoMaximo
    var cantidadDePasajeros
    var coloresIncompatibles

    method velocidadRequerida() = distanciaARecorrer/tiempoMaximo

    method puedeSatisfacer(unAuto) {
        return 
        (unAuto.velocidadMaxima() -  self.velocidadRequerida()) > 10 and 
        unAuto.capacidad() >= cantidadDePasajeros and not 
        coloresIncompatibles.contains{unAuto.color()}
    }

    method cantidadDePasajeros() = cantidadDePasajeros

    method coloresIncompatibles() = coloresIncompatibles

    method acelerar(){tiempoMaximo -= 1}

    method relajar(){tiempoMaximo += 1} 
}