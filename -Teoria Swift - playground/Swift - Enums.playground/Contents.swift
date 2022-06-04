import UIKit
import Darwin
import CoreFoundation

var greeting = "Hello, playground"

    //ENUMS
// Enumeradores  - Tipo especial que permite representar um conjunto ou um grupo nomeado de opções, que podem ter valores associados aos mesmos.

enum CompassPoint {  //inicial em maiusculo e valores em minusculo //criando um case p/ cada.
    case north
    case east
    case west
    case south
}

var direction = CompassPoint.north

var direction2: CompassPoint = .north

direction = .south


enum SeatPosition: String {  //A mesma case para todas as opções
    //case aisle, middle, window
    case aisle = "corredor", middle = "meio", window = "janela" // valores ("corredor", "meio", "janela")
}

var passengerSeat = SeatPosition.window
switch passengerSeat {  // nao precisa do default ou break//
case .aisle:
    print("O passageiro está sentado no corredor")
case .middle:
    print("O passageiro está sentado no meio")
case .window:
    print("O passageiro está sentado no janela")
}
//os enumeradores podem vim com um valor bruto padrão
print(passengerSeat)
print(passengerSeat.rawValue)

enum Month: Int{
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}
print(Month.august.rawValue) // sem o (=1) janeiro seria 0, ele ja se associa automaticamente.


//VALORES ASSOCIADOS (Associated Values)

enum Measure {
    case weight (Double)
    case age (Int)
    case size (width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.71) //.weight (82) //.age(30)
switch measure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let width, let height):
    print("As suas medidas são \(width)m de largura e \(height)m de altura")
}

//limitar opções para nao ter atribuições erradas, e ainda associar valores as associações.

