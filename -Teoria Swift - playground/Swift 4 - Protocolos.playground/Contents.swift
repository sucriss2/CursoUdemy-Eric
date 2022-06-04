import UIKit

var greeting = "Hello, playground"


//Protocolos - defini um conjunto de regras propriedades e metodos que devem ser implementados pelo tipo e cabe ao mesmo dizer como vao funcionar.
//conformidade com o protocolo - quando adota e implementa os metodos


enum FuelType {
    case gasolina, ethanol, diesel, flex
}

protocol ACCapable {  //protocolo, capaz de ter arcondicionado
    var hasAC: Bool {get set} // Obter recuperar/ alterar, configurar.
    func turnAC(on:Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACCapable {  // aplicando com a (,) ou faz uma extensão
    
    var numberOfDoors: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {  //protocolo adotado
        if on {
            print("Ligando ar-condicionado")
        } else {
            print("Desligando ar-condicionado")
        }
    }
}

class Bike: Vehicle {
    
    var cc: Int

    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}             //extension Bike: ACCapable {...}  implementa com metodos etc.
    

class Airplane: Vehicle, ACCapable {
    
    var numberOfEngines: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if numberOfEngines > 1 {
            print("Aviões mono-motores não podem ligar ar-condicionado")
        } else {
            if on {
            print("Ligando ar-condicionado")
            } else {
                print("Desligando ar-condicionado")
            }
        }
    }
}
