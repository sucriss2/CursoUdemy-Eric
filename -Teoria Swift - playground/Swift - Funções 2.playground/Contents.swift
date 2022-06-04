import UIKit

var greeting = "Hello, playground"

//FUNÇÕES (2)

//First Class Citizen (???) //PODE SER PASADO COMO ARGUMENTO, MODIFICADO OU ATRIBUIDO EM UMA VARIAVEL, RETORNADOO POR UMA FUNÇAO
//função como argumento de uma função.
func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}
func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//EXEMPLO
//Pegar o tipo da função, sua assinatura, parametros que ela recebe ((_ a: Int, _ b: Int) -> Int) tirar o nome dos parametros - ( Int, Int) -> Int = operação
typealias Op = ( Int, Int) -> Int  // colocar um "apelido na função

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int { //resultado operando em (a, b)
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: multiply) // resultado da função que aceita outra função como parametro

// Função que retorna outra como parametro
func getOperation(_ operation: String) -> Op {  //receber outra função(getOperation) e devolve
    switch operation {
        case "soma":
            return sum
        case "subtração":
            return subtract
        case "multiplicação":
            return multiply
        default:
            return divide
    }
}
var operation = getOperation("subtração")  // (var operation) é uma função  //getOperation(operation:String)
operation(30, 15)
            //Função que é parte de uma classe ou uma struct, chama-se METÓDO






