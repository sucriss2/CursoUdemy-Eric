import UIKit

var greeting = "Hello, playground"

//HERANÇA - Permite a outra classe herdar caracteristicas de outra classe (suas propriedades e metodos).
//Podemos reaproveitar funcionalidades e caracteristicas, podemos criar subversoes de determinadas classes, que aproveitam tudo que a classe mae deixou.
//Mais a ideia é criar uma estruturas de herarquia que faça sentido.

//
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
  //Classes derivadas (filhas) DOG / BIRD
class Dog: Animal {
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
    // (INIT)Designated Initializer/Construtores - contrutor que alimenta todas as propriedades de uma classes
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed) //(SUPER - construtor da class mae)
    }
    
    //Convenience Initializer - construtor de conveniencia
//maneira simples e rapida de contruir uma classe especifica
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
   
}

//1) Designated Initializer deve chamar outro designated da sua classe base (INIT chama SUPER.INIT)
//2) Um convenience Initializer deve chamar outro initializer da mesma classe (chamar INIT)
//3) Um convenience Initializer deve chamar, no final, um designated initializer (chama SIPER.INIT)



let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)

let maleBird = Bird(color: "black", breed: "Sabiá") // convenience init

billy.emiteSound()
zeCarioca.emiteSound()
maleBird.emiteSound()












