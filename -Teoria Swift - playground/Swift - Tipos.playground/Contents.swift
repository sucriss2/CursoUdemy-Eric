import UIKit

var greeting = "Hello, playground"

//Int, Float, Double, Character, String, Bool

//Booleanos (Bool) O MAIS LEVE, ARMAZENA DADOS SE ALGO É VERDADEIRO (TRUE) OU FALSO (FALSE) NÃO POSSO MUDAR O TIPO DA VARIAVEL, NUNCA.

var isFirstTime: Bool = true
var likesFruits = true

//Inteiros (Int)  ARMAZENAR VALORES INTEIROS QUE NÃO POSSUEM CASAS DECIMAIS.
//var age: Int = 25
var newAge = 43
     //(Signed - ACEITA VALORES NEGATIVOS E POSITIVOS)
var temperatura = -12
     //(UInt//Unsigned Int - SÓ ACEITA NUMEROS INTEIROS POSITIVOS)
var age: UInt = 39

//Float NUMEROS QUE POSSUEM CASAS DECIMAIS - OCUPA 32BIT
var folar: Float = 3.5  //usar forçadamente Float, para nao ser entendido pelo sistema como Double

//Double (NUMEROS COM MUITAS CASA DECIMAIS - OCUPA 64BIT)
let carzyNumber = 10000.7563839

//Charecter   PARA USAR APENAS (UM) CARACTERES) E USAR O NOME (CHARACTER) PARA O SISTEMA NAO ENTENDER COMO STRING.
var gender: Character = "M" // "F"
var enter: Character = "\n"  //PARA USAR O (ENTER)
var aspas: Character = "\""

//String: Conjunto de caracteres
var newGender = "M"
let studentName = "\"Dr.\" Paulo Henrique Bastos"
print(studentName)
let firstName = "Eric"
let lastName = "Brito"
//let fullName = firstName + " " + lastName

let fullName = "\(firstName) \(lastName) - Idade: \(age) anos "  // USANDO \() O CONTEUDO DA VARIAVEL SERA AVALIADA E O SEU RESULTADO SERA INTERPOLADO.
print(fullName)
print("A variável fullName tem \(fullName.count) caracteres")
let text = """
Óla, espero que esteja gostando do curso.
             Ainda tem muito mais pela frente

Fim!!
"""
print(text)

