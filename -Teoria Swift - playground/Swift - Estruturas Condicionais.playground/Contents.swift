import UIKit

var greeting = "Hello, playground"


//If - Else (estrutura basica de condição, se vdd executa algo se falso executo outro)
  var hasHeadache: Bool = false
  var humor: String = ""
  if hasHeadache {
    humor = "Muito p... da vida"
  }else {
    humor = "Felizão"
  }

  let number = 11
if number % 2 == 0 {
    print ("Ele é par")
} else {
    print("Ele é impar")
}

var temperature = 18
var climate = ""
if temperature <= 0 {
    climate = "Frio pra cara....."
} else if temperature < 14 {
    climate = "Está frio"
} else if temperature < 21 {
    climate = "Clima agradável"
} else if temperature < 30 {
    climate = "Um pouco quente"
} else {
    climate = "Muito quente"
}

let letter = "i"
var letterType = ""
if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "vogal"
} else {
    letterType = "consoante"
}

//Switch (cenario com varias analises)  SEMPRE TRATAR TODOS OS CASO (default)
switch letter {
  case "a", "e", "i", "o", "u":
    letterType = "vogal"
  default:
    letterType = "consoante"
}

let speed = 95.0
switch speed {
case 0.0..<20.0:
    print("Primeira marcha")
case 20.0..<40.0:
    print("Segunda marcha")
case 40.0..<50.0:
    print("Terceira marcha")
case 50.0..<90.0:
    print("Quarta marcha")
default:
    print("quinta marcha")
}

//Closed Range e Half-Closed Range
//... (Closed Range)
//..< (Half-Closed Range)

let range0_10 = 0...10
let range0_9 = 0..<10

//
let firstLetter = "e"
switch firstLetter {
  case "a"..."f":
    print("Você está no primeiro trimestre")
  case "g"..."l":
    print("Você está no segundo trimestre")
  case "m"..."r":
    print("Você está no terceiro trimestre")
  default:
    print("Você está no quarto trimestre")
}

