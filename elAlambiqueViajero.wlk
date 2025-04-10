object luke {
    var vehiculo = alambique
    var lugaresVisitados = 0
    var recuerdo = null

    method ViajarEnSiPuedeA(unVehiculo, unLugar) {
        if (unLugar.requisitosParaViajarEn(unVehiculo)) {
            self.viajarEnA(unVehiculo, unLugar)
        }
    }
    method vehiculo() = vehiculo
    method vehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
    method viajarEnA(unVehiculo, unLugar) {
        recuerdo = unLugar.recuerdoTipico()
        unVehiculo.sufrirConsecuenciasDelViaje()
    }
}

object alambique {
    var nivelDeCombustible = 100

    method nivelDeCombustible() = nivelDeCombustible
    method sufrirConsecuenciasDelViaje() {
        nivelDeCombustible -= 50
    }
    method esRapido() = true
}

object paris {
    method recuerdoTipico() = "torre eiffel"
    method requisitosParaViajarEn(unVehiculo) = unVehiculo.nivelDeCombustible() > 80
}
object buenosAires {
    var presidente = "milei"
    var recuerdoTipico = null

    method recuerdoTipico() {
        if (presidente == "milei") 
            return "mate"
        else 
            return "mate con yerba"
    }
    method requisitosParaViajarEn(unVehiculo) = unVehiculo.esRapido() 
}
object bagdad {
    var recuerdoTipico = "armas"
    method recuerdoTipico() = recuerdoTipico
    method requisitosParaViajarEn(unVehiculo){}
}
object lasVegas {
    var cuidadHomenajeada = buenosAires

    method cuidadHomenajeada() = cuidadHomenajeada
    method cuidadHomenajeada(unaCuidad) {
        cuidadHomenajeada = unaCuidad
    }
    method recuerdoTipico() = cuidadHomenajeada.recuerdoTipico()
    method requisitosParaViajarEn(unVehiculo) = cuidadHomenajeada.requisitosParaViajarEn(unVehiculo)
}