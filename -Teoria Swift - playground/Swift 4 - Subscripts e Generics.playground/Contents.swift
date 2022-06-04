import UIKit

var greeting = "Hello, playground"


//Subscripts e Generics


class Car {
    
    var licensePlate: String
    
    subscript(index: Int) -> String { //recuperar, retornar.
        get {
            let character = Array(licensePlate)[index]
             return String(character)
        }
//quando pedir algo, coloca a posicao do elemento na array e transformo os caracteres em array
        set {
           var array = Array(licensePlate)  //atribuir
            array[index] = Character(newValue) //newValue constante que representa o valor                                        passado., convertido em caracter.
            self.licensePlate = String(array)
        }
//
    }
    
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
}

let car = Car(licensePlate: "EXP-8722")
car[0] = "A"
print(car.licensePlate)


//Generics - criar um tipo que nao é nenhum
func swapValues<T>(_ a: inout  T, _b: inout T) {
    let tempA = a
    a = b as! T
    b = tempA as! Int
}

var a = 10
var b = 20
//swapInts(a: Int, b: Int)
swapValues<T>(&a, &b)


b
a












