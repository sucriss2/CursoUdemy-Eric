import UIKit

var greeting = "Hello, playground"

//ORIENTAÇÃO A OBJETOS   //Classes, objetos, propriedades e métodos//

//HERANÇA - herdar caracteristicas de outro objeto(suas propriedades e metodos).
//POLIMORFISMO - modifica as heranças (propriedade e métodos).
//ENCAPSULAMENTO - tecnica que detalhes internos permananeção ocultos, protegendo de interferencias indevidas.

//CLASSES - Base que define todas as carcteristicas de um objeto (controe um o objeto)
//Possuem propriedades diferentes , mas as mesmas caracteristicas.

class Person {
    var name: String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    func speak(sentence:String) {        //Metodo
        if age < 3 {
            print("gugu dada")
        } else {
            print(sentence)
        }
    }
    
    func introduce() {
        speak(sentence: "Óla, meu nome é \(name)")
    }
}

class Job {
    var title: String
    var sallary : Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

//Objetos - Instância de uma classe. - Pega a classe e cria um objeto

let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fábio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()


//observadores de propriedades - toma atitude sempre que a propriedade é modificada.

class Vehicle {
    var speed: Double = 0 { //Variavel armazenada.Observadores sempre que abre {} na propriedade
        didSet { // didSet - avisa mudança na propriedade e o que escrever nele é modificador.
            speed = min(speed, maxSpeed) //(min)compara dois valores e retorna o menor deles.
        }
    }
    var model: String
    static let speedUnit = "Km/h"
//(Variavel computada - não armazena nada somente manipula, somente retorna o valor).
    var maxSpeed: Double {
        return 250
    }
//(Outro exemplo de Variavel computada - alem de fornecer valor, tbm ela recebe valor).
    var speedInMilessPerHour: Double {
        get {   //opter o valor de speedInMilessPerHour
            return speed / 1.60934
        }
        set {  //definir um valor de speedInMilessPerHour
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    //metodos de instância (tem que criar um objeto para ultilizar os metodos.
    func descript() -> String {
        return "Veículo: \(model), velocidade atual: \(speed)"
    }
    //metodo de classe - nao precisa criar objeto
    class func alert() -> String {
        return "Se beber, não dirija!!"
    }
    
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print((car.speed),"Km/h")





