import UIKit
import Foundation

var greeting = "Hello, playground"

//ESTRUTURAS - STRUCTS

let age: Int = 20
let name: String = "Eric"

 //CRIANDO STRUCT (PERSON) CRIAR UMA PROPRIEDADE (VAR) // possue um metodo (CONSTRUTOR)
struct Person {
    var name: String
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Óla")
    }
    //se o metodo modificar alguma propriedade deve colocar o MUTATING
    mutating func incrementAge() {
     age += 1
    }
}

//var person = Person(name: "Eric", age: 39)
//var person = Person.init(name: "Eric, age: 39) // CONSTRUTOR (init)
//person.sayHello()  //chamar função ((.) e nome da função) dotesintase
//person.name = "João"
//print(person.name)

//var newPerson = Person(name: "Eric")
//newPerson.age = 39
//newPerson.incrementAge()


//COMPUTED PROPERTIES (PROPRIEDADES COMPUTADAS) - nao precisa devolver valores baseado em algo que ja existe.

struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32   // computar celsius em fahrenheit e dar o resultado.
    }
}
//var temperature = Temperature(celsius: 25, fahrenheit: 67) //Não é preciso
var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit)

//CRIAR QUALQUER TIPO, CRIAR METODOS, FUNCOES.
