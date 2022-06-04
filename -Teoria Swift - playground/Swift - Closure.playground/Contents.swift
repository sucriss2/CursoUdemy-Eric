import UIKit

var greeting = "Hello, playground"

//Closures - É UM PEDACO AUTO CONTIDO DE CODIGOS E FUNCIONALIDADES, QUE PODEM SER REPASSADOS E UTILIZADO NO CODIGO. ** SÃO FUNÇÕES ANÔNIMAS, FUNCOES QUE NAO POSSUEM NOMES **. ULTILIZA DIRETAMENTE
/*
func sum(_ a: Int,_ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int,_ b: Int) -> Int {
    return a - b
}

func calculate(_ a: Int,_ b: Int, operation:(_ a: Int,_ b: Int) -> Int) -> Int {
    return operation(a, b)
}

calculate(10, 20, operation: sum)

calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
    return a * b
})

calculate(10, 20, operation: {a, b in
    return a * b
})

calculate(10, 20, operation: {
    return $0 * $1
})

calculate(10, 20, operation: {$0 * $1}) //quando a closure é o ultimo argumento, ela permite ficar do lado de fora
//EXEMPLO
   //calculate (10, 20)(a: Int, b: Int, operation: (Int, Int) -> Int in
// Code}
calculate(10, 20) {$0 * $1} // simplificação maxima dessa operação

calculate(10, 20, operation: *) // so é posivel colocando o argumento (operation:)


//Usando em varios metodos de linguagem, Arrys, Dicionarios...
import Foundation
var names = [
    "    Alessandra   ",
    "  Jessica   ",
    "   Anderson ",
    "   Demys  ",
    "  Harley    "
]

//MAP (metodo que mapeia cada elemento e devolve uma nova coleção com os elementos modificados.)
//names.map(<#T##transform: (String) throws -> T##(String) throws -> T#>) trabalha com um so parametro ($0)
//names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)}) remove characteres da string
let correctedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctedNames)

let uppercasedNames = correctedNames.map({$0.uppercased()})
print(uppercasedNames)

let britos = correctedNames.map({$0 + " Brito"})
print(britos)

//FILTES - filtrar uma colecão, devolver apenas elementos com requesitos criados.
let newNames = correctedNames.filter({$0.count < 7})
print(newNames)

//REDUCE - Comprimindo os intem pedidos, combinando e devolvendo um grande item.
let sumLetters = correctedNames.reduce(0, {$0 + $1.count})
print(sumLetters)
 


struct Person {
    let name: String
    let age: Int
    let height: Float
    let weight: Float
}


let people:[Person] = [
    Person(name: "Suh", age: 32, height: 1.71, weight: 80.0),
    Person(name: "Marcim", age: 30, height: 1.71, weight: 90.0),
    Person(name: "Dani", age: 42, height: 1.67, weight: 70.0),
    Person(name: "Jessica", age: 30, height: 1.20, weight: 75.0),
    Person(name: "Bruna", age: 21, height: 1.60, weight: 76.0)
]

func alphabacthicOrder(person1: Person, person2: Person) -> Bool {
    print(person1.name, person2.name)
    return person1.name < person2.name
}

func lesserAge(person1: Person, person2:Person) -> Bool {
    return person1.age < person2.age
}

let reverseNameOrder = { (a: Person, b: Person) -> Bool in
    print(a.name + "   --->   " + b.name)
    return a.name > b.name
}

let orderedPeople = people.sorted(by: reverseNameOrder)

let orderedPeople2 = people.sorted(by: { (a: Person, b: Person) -> Bool in
    return a.weight > b.weight
})

let numbers = [1, 2, 3, 4, 5]

func multplier3(number: Int) -> Int {
    return number * 3
}

let mult3 = numbers.map({ (number) -> Int in
    return number * 3
})


let decotation = numbers.map({ (number) -> String in
    return "❤️\(number)❤️"
})


let starts = numbers.map({ (number) -> String in
    return String(repeating: "⭐️", count: number)
})

print(starts)


let numbers2 = [1,2,3,4,5,6,7,8,9]
let pairNumbers = numbers2.filter( { number in
    return number % 3 == 0
})
    
let sumAllNumbers = numbers2.reduce(0, {(summedValue, nextNumber) -> Int in
    print("--->", summedValue, nextNumber)
    return summedValue + nextNumber
})

//let multAllNumbers = numbers2.reduce(1, {(product, nextNumber) -> Int in
//    return product * nextNumber
//})

let tokenizeString = { (resultString: String, nextNumber: Int) -> String in
    return resultString + "\(nextNumber)" + ", "
}

let separationString = numbers.reduce("", tokenizeString)

let asdfd = numbers.filter { number in
    number % 2 == 0
}

let aaa = numbers.sort

*/



var signAutograph(to name: String) = {
    print("Para \(name), meu fã número 1!")
}
signAutograph(to: "Lisa")


var signAutograph = { (name: String) in
    print("Para \(name), meu fã número 1!")
}
signAutograph("Lisa")
