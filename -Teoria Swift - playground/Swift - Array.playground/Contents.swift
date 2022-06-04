import UIKit

var greeting = "Hello, playground"

    

var name1 = "Fulano"
var name2 = "Ciclano"

var names = ["Fulano", "Ciclano", "Beltrano"]  //ARRAY
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]  //ARRAY

var lotteryNumbers: [Int] = []
var phomeNumbers: [String]?

var age: [UInt8] = [9, 7, 12, 15, 22] //UInt8 (NUMEROS INTEIROS E POSITIVOS COM ATE 8BTS)

var guests = ["João", "Paula", "Alexandre", "Patricia", "Sandra"]

print(guests.count)     //PROPRIEDADE É UMA VARIAVEL DENTRO DE UM ELEMENTO)
print(guests.isEmpty)   //INFORME SE A ARRAY ESTA VASIA OU NÃO

//RECUPERAR UM ELEMENTO ULTILIZANDO O INDICE (POSICÃO QUE O ELEMENTO ESTA) EX: 1o É 0
let secondGuest = guests[1]
// TROCAR ELEMENTOS DA ARRAY
guests[0] = "Henrique"
print(guests)

//POSSIVEL REMORVER E ADICIONAR ELEMENTOS NA ARRAY
guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"]
print(guests)

//LOCALIZANDO (RECUPERAR PRIMEIRO E ULTIMO )ELEMENTOS NA ARRAY
if let first = guests.first {
    print(first)
}

if let last = guests.last {
    print(last)
}
//ADICIONAR ELEMENTOS APENAS NO FINAL DA ARRAY
guests += ["Sandro", "Helena", "Elen"]  //ADICIONA VARIOS (+=)

guests.append("Edina") //ADICIONA UM ELEMENTO (append)

guests.insert("Romildo", at:2)  // ADICIONAR EM POSIÇÃO ESPECIFICA E EXISTENTE.
print(guests)

//REMOVER ELEMENTOS DA ARRAY

/*guests.removeFirst()   REMOVE O PRIMEIRO
guests.removeLast()      REMOVE O ULTIMO
guests.remove(at: 2)     REMOVE SOMENTE A POSIÇÃO INDICADA
guests.removeAll()       REMOVE TODA ARRAY
*/

//COMO DESCOBRIR SE EXISTE O ELEMENTO NA ARRAY
if guests.contains("Helena") {
    print("A Helena foi convidada")
}
