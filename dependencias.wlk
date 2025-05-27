import autos.*
class Dependencia {
  var empleados 

  const flotaDeRodados = #{}

  method agregarAFlota(rodado) = flotaDeRodados.add(rodado)

  method quitarDeFlota(rodado) = flotaDeRodados.add(rodado)

  method pesoTotal() = flotaDeRodados.sum{r => r.peso()}

  method estaBienEquipada() = flotaDeRodados.size() >= 3 and flotaDeRodados.all{r => r.velocidadMaxima() >= 100}

  method capacidadTotalEnColor(color) = flotaDeRodados.filter{r => r.color() == color}.sum{r => r.capacidad()}

  method colorDelRodadoMasRapido() = flotaDeRodados.max{r => r.velocidadMaxima()}.color()

  method capacidadTotal() = flotaDeRodados.sum{r => r.capacidad()}
  
  method capacidadFaltante() = empleados - self.capacidadTotal()

  method esGrande() = flotaDeRodados.size() >= 5 and empleados >= 40
}