//: Playground - Automovil: Entrega semana 4

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var velocidadEnCadena : String = ""
        let actual : Int = velocidad.rawValue
        switch(velocidad){
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadEnCadena = "Velocidad baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadEnCadena = "Velocidad media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad alta"
            velocidad = .VelocidadMedia
        }
        return (actual, velocidadEnCadena)
    }
}

var auto = Auto()

for var i : Int = 1; i <= 20; i++ {
    var (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(i). \(actual) , \(velocidadEnCadena)")
}
