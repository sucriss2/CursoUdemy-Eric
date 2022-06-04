import UIKit

var greeting = "Hello, playground"

//Operadoes Lógicos (VALIDAR UMA IDEIA)

//Operador E ou AND (&&)  (SO É VERDADE SE TODOS FOREM)
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtapple = false

var isHappy = boughtBanana && boughtTomato && boughtapple

true && true
true && false
false && false
false && true

//Operador OU (OR): ||
var likesMeat = false
var likesBeer = true
var canInviteBarbecue = likesBeer || likesMeat

true || false
true || true
false || true
false || false

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1+grade2)/2  //EX: grade1+grade2/2 ERRO - resolve o que tem no () depois o resultado com o de fora.

//Operador de negação (NOT): ! //Operador Unario//  - LADO ESQUERDO NEGAÇÃO
var knowSwift = true
var enrolSwiftCourse = !knowSwift  //(negou a variável)

//Operador ternário (? e :) - ATUA EM TRÊS VARIAVEIS
var grade = 7.95
var gradeResult = (grade >= 7.0) ? "Aprovado" : "Reprovado"

let number = 11
let type = (number % 2 == 0) ? "Par" : "Ímpar"  // isso tbm é uma condição sem "if"ou "else" , faz avaliando e atribui uma valor se for true ou false













