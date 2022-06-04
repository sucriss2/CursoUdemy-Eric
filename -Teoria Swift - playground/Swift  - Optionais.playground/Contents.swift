import UIKit

var greeting = "Hello, playground"


// OPTIONALS EM SWIFT
     
     /*   PARA NAO TRABALHAR OBJETO SEM ESTA PRONTO, ESTANDO VAZIO. VARIAVEL SEM CONTEUDO.   MANIPULAR OBJETO QUE NAO FOI ISTANCIADO.
               EX: var address: String
                   print (address)            */
    
var rg : Int = 3267894
var driverLicense: Int?
//driverLicense = 64678992
//print(driverLicense!)

//DESEMBRULHANDO O OPTIONAL EXTRAIR UM VALOR DE ALGO - NÃO É SEGURO
//print("A minha carteira dda motorista é:", driverLicense!)

//Optional binding - DESEMBRULHAR DE MANEIRA SEGURA
if let driverL = driverLicense {
    print("A minha carteira de motorista é:", driverL)
} else {
    print("Não possuo carteira de motorista")
}
/*  --- EXEMPLO NIL-NULO ---
 
let addressNumber = Int("100A")
print(addressNumber)  ERRO (IMPRIME //NIL-NULO)
 
*/

let addressNumber = Int("100a")
if let addressNumber = addressNumber {
    print(addressNumber)
}

//Nil coaliscing operator (Operador de coalescência nula)
let number : String = "578A"
let addressNumber2 = Int(number) ?? 0
print(addressNumber2)
// (??) tenta desembrulhar (number) caso nao seja possivel ?? usa 0. Ex (number 578A) imprimi 0.

//Implicit Unwrapped Otionals
var name: String!
name = "Joaozinho"
print(name!)
//if name != nil {   // (!=) diferente
//    print(name)
//}

var nome: String? = nil
nome = "Suelen"
print(nome!)


//var number9: Int = 0
//nome = nil
//if let unwrappedNome = nome {
//    print(unwrappedNome)
//} else {
//    print("Nao tem valor")
//}


func welcome(name: String?) {
    
    guard let validName = name else {
        print("nome nao existe")
        return
    }
    print("o nome é \(validName).")
}

welcome(name: "Suelen")
welcome(name: nil)


func welcome2(name: String?) {
    var visitorName = ""
    
    if let validName = name {
        visitorName = validName
    } else {
        visitorName = "Desconhecido"
    }
    
    print("Bem vindo \(visitorName)")
}

welcome2(name: "suh")
welcome2(name: nil)

//Operador coalescing

func welcome3(name: String?) {
    let visitorName = name ?? "Desconhecido"
    print("Bem vindo \(visitorName)")
}

welcome3(name: "suh")
welcome3(name: nil)

