import UIKit

var greeting = "Hello, playground"

           //CONTROLE FLUXO

//FOR IN

print("Estou no dia 1 de Setembro")

for day in 1...30{
    print("Estou no dia \(day) de Setembro")
}

for _ in 1...5{
    print("Dedique-se ao curso de Desenvolvimento iOS 11")
}

let students = [
"João Francisco",
"Pedro Henrique",
"Gustavo Oliveira",
"Janaina Santos",
"Francisco José"
]
for student in students {
    print("O aluno \(student) veio na aula de hoje")
}

  //IMPRIMIR UMA A UMA LETRA DO NOME
//TODA STRING TEM UMA COLEÇÃO DE CHARACTERS
let name = "Eric Alves Brito"
for letter in name{
    print(letter)
}

for (index, letter) in name.enumerated() {
    print(index, letter)
}


let people = [
    "Paulo": 25,
    "Renata": 18,
    "Kleber": 33,
    "Eric": 39,
    "Carol": 36
]

for person in people {
    print (person.key, person.value)
}

for (name, age) in people {
    print(name, age)
}


//WHILE (CONTINUA A EXECUÇÃO ENQUANTO A CONDIÇÃO FOR VERDADEIRA)

var life = 10
while life > 0 {
    print("O jogador esta com \(life) vidas")
    life = life - 1
}
//deve de alguma maneira modificar a execusão para nao ser executada infinitamente.


import Foundation //(conjunto de regras de coisas que podem usar no codigo)

var megaSena: [Int] = []
while megaSena.count < 6 {
    let number = Int(arc4random_uniform(60)+1)
    if !megaSena.contains(number) {
         megaSena.append(number)
    }
}
print(megaSena.sorted())

//REPEAT WHILE - REPETIR O CONJUNTO DE CODIGOS ENQUANTO

var tries = 0  // (quantidades de tentativas)
var diceNumber = 0   // (NUMERO QUE SAIU NO DADO)
repeat {  //REPETIR O CONJUNTO DE CODIGOS ENQUANTO O NUMERO (QUE SAIU DO DADO) FOR DIFERENTE DE (6)
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1) // DADOS VAI DE 1 A 6
} while diceNumber != 6
print("Você tirou 6 após \(tries) tentativas")

//BREAK - QUEBRAR UMA SEGUENCIA AONDE VC QUISER

let grades = [10.0, 9.0, 8.0, 7.0, 9.5, 5.0, -1.0, 6.5,10.0, 14.0, 8.0]
for grade in grades {
    print(grade)
    if grade < 0.0 || grade > 10.0 {
        print("Nota Inválida")
        break
    }
}
//alem de mostrar a nota, ele indica um whale para consertar
