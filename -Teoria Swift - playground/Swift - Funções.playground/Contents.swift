import UIKit

var greeting = "Hello, playground"

//FUNÇÕES
//CONJUNTO AUTO CONTIDO DE INSTRUCOES DENTRO DE UM COMANDO QUE PODE SER EXECUTADA QUANTAS VEZES DESEJADO E USAMOS CHAMANDO O NOME.
/*
func nome(parametro: Tipo) -> TipoDeRetorno {
    códigos e comandos
    
    return TipoDeRetorno
}
*/

func sayHello() {
     print("hello")
}
sayHello()

func say(message: String) {
    print(message)
}
say(message: "Bom dia!! \nTenha um otimo dia!")

func say(message: String, to: String) -> String {
    return message + " " + to
}

say(message: "Boa noite", to: "Caroline")
let sentence = say(message: "Boa noite", to: "Caroline") //acrescenta uma constante
print(sentence) // printa o que ta contido em -sentence- (say(message: "Boa noite", to: "Caroline"))

//nome externo(argumentos) não existe e so os parametros
func sum(_ a: Int, b: Int) -> Int {
    return a + b
}
print(sum(10, b:20))  //antes print(sum(a:10, b:20)) PRIMEIRO NOME É O ARGUMENTO

// nomes diferentes para argumento e parametros
//QUANTO COLOCAR DOIS NOMES O 1o É O EXTERNO e o 2o Interno
func multiply(_ number1: Int,by number2: Int) -> Int {  //(_ e by) Externos
    return number1 + number2
}
multiply(20, by: 10)

//função com numero inicial somando com varios
func sum(_ initialValue: Int, withValues values: Int...) -> Int {  //(Int...) colecao de inteiros
    var result = initialValue
    for value in values {
        result += value
    }
    return result
}
print(sum(2, withValues: 7, 9, 9, 10, 23)) //retornando somente um tipo

//RETORNANDO COM MAIS DE UM TIPO
//METODO string no Foundation (components) - Pega um string e separa usando um (":") caracter especial.

import Foundation

let studentData = "Eric Alves Brito:39"

func getStudentInfo(_ data: String) -> (name: String, age: Int) //tupla//
{
    let info = data.components(separatedBy: ":")
    let studentName = info [0] //primeiro elemento (studentName)
    let studentAge = Int(info[1]) // segundo elemento (studentAge) converter para inteiro
    return (studentName, studentAge!) //desembrular (!) - string para Int gera um option(!)
}

let student = getStudentInfo(studentData)
print(student.name)
print(student.age)

/// ***************************************





























