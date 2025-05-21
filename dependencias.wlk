import autos.*
class Dependencias {
  var property empleados = 0

  const flotaDeRodados = []

  method agregarAFlota(rodado) = flotaDeRodados.add(rodado)

  method quitarDeFlota(rodado) = flotaDeRodados.add(rodado)

  method estaBienEquipada() = flotaDeRodados.size() >= 3 and flotaDeRodados.all{r => r.velocidad() >= 100}

  method capacidadTotalEnColor(color) = flotaDeRodados.filter{r => r.color() == color}.sum{r => r.capacidad()}

  method colorDelRodadoMasRapido() = flotaDeRodados.max{r => r.velocidad()}.color()

  method capacidadTotal() = flotaDeRodados.sum{r => r.capacidadTotal()}
  
  method capacidadFaltante() = empleados - self.capacidadTotal()

  method esGrande() = flotaDeRodados.size() >= 5 and empleados >= 40
}
