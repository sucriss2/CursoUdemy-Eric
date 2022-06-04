import UIKit

var greeting = "Hello, playground"

//POLIMORFISMO - modifica as heranças (propriedade e métodos).
// Muitas formas - Altera ou modificar como funciona os metodos basicos da classe.

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}

class Dog: Animal {
    
    override func emiteSound() {   // modifica o metodo da classe mae. SUBSCREVENDO mantendo a mesma estrutura
        print("Au, au, au")
    }
    func run() {
        print("O cachorro está correndo")
    }
}

class Bird: Animal {
    
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O pássaro está voando")
        } else {
            print("Este pássaro não voa")
        }
    }
    
    override func emiteSound() {   // POLIMORFISMO
        print("🎶 🎶 🎶")
    }
    
    // (INIT)Designated Initializer/Construtores - contrutor que alimenta todas as propriedades de uma classes
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer - construtor de conveniencia
//maneira simples e rapida de contruir uma classe
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
   
}

class Duck: Bird {
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
    
    
}
//1) Designated Initializer deve chamar outro designated da sua classe base
//2) Um convenience Initializer deve chamar outro initializer da mesma classe
//3) Um convenience Initializer deve chamar, no final, um designated initializer

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "black", breed: "Sabiá") // convenience init
let donald = Duck(color: "branca", gender: "M", breed: "Disney")

donald.emiteSound()
billy.emiteSound()
zeCarioca.emiteSound()

//Type Casting - forma de tratar um tipo como se fosse outro tipo. Dessa maneira consigo acessar formas e metodos que so esse tipo possue.

let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]
print("==================")
for animal in animals {
    animal.emiteSound()
    
    /*
    if animal is Dog {               // tratamento validando e forçando (!)
        (animal as! Dog).run()
    }
    if animal is Duck {
        (animal as! Duck).fly()
    }
    */
   
    /*if let dog = animal as? Dog {
        dog.run()
    }
    if let duck = animal as? Duck {
        duck.fly()
    }*/
    
    switch animal {   //
        case let dog as Dog :
            dog.run()
        case let bird as Bird :
            bird.fly()
        default:
            break
    }
}
            
