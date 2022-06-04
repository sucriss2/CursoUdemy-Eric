import UIKit

var greeting = "Hello, playground"

//Extensões (Extensions) - Adicionar novas funcionalidades a class, enum, strucks e etc. Criar caracteristicas e funcionalidades a elementos que ja conhecemos , novas propriedades computadas e novos metodos e construtores desde que seja convenience initializer.

import Foundation

let name = "Eric Alves Brito"

extension String {  //modificar um tipo, memsmo sem acesso a ele.
    var vowels: [Character] {
        var list : [Character] = []
        for character in self {
            switch String(character).lowercased() {
                case "a", "e", "i", "o",     "u" :
                list.append(character)
                default:
                    break
                }
            }
            return list
        }
                //metodo reduzido
/*      func initials() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
 */
    
    func initials() -> String {   //pega as iniciais de um string
        let array = self.components(separatedBy: " ")
        let firsts = array.map({$0.first!})
        return String(firsts)
    }
}

print(name.vowels)
print(name.initials())


class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}

extension Account {
    convenience init(number: String, balance: Double) {
        self.init(number:number)
        self.balance = balance
    }
}

let account = Account(number: "15654914038265201")

// ------------------------------------------// --------------------------------------------//


//Crie uma nova propriedade computada para uma String para retornar uma nova string apenas com as vogais

extension String {
    var vowels2: String {
        let elements = "aeiouAEIOU"
        let result = self.filter { elements.contains($0) }
        return result
    }
}

print(name.vowels2)

// - Crie uma propriedade para um inteiro que retorne o seu valor absoluto. O valor absoluto é o valor positivo de um número.

extension Int {
    var absolute: Int {
        if self < 0 {
            return self * -1
        }
        return self
    }
}
