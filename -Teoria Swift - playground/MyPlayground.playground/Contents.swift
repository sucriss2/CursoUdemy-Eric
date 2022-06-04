import UIKit
import Darwin

var greeting = "Hello, playground"


var age: Int = 12

func isAdult(age: Int) -> String {
    
    if age >= 30 {
        return "Is an Adult"
    }
    else{
        
        return "Is a Kid"
    }
}

isAdult(age: age)
isAdult(age: 23)
isAdult(age: 15)


func IMC (weight: Double,height: Double) -> String {
    let resultImc = weight / (height * height)
    if resultImc < 18.5 {
        return "Magreza"
    } else if resultImc < 24.9 {
        return "Normal"
    }
    return "Balofo"
    
}
 
IMC(weight: 70, height: 1.70)
 


// Exercícos- Condicionais 01

//Crie uma aplicação que receba a velocidade de um carro em uma variável de nome que escolher. A velocidade será representada em quilômetro por hora. Se a velocidade for maior que 80Km/h uma multa deverá ser calculada no valor de R$ 14,00 por quilômetro acima da velocidade permitida e a seguinte mensagem deve ser impressa.
//"Você recebeu uma multa de X reais por passar de Y kilometros da velocidade permitida."

func calculatedPenalty(speed: Int, tax: Int, speedLimit: Int = 80) -> String {
    
    
    if speed > speedLimit {
        let speedExceeded = speed - speedLimit
        let calculatedTax = speedExceeded * tax
        
        return "Você recebeu uma multa de \(calculatedTax) reais por passar de \(speedExceeded) kilometros da velocidade permitida"
    }
    return "ok"
}


calculatedPenalty(speed: 220, tax: 20, speedLimit: 100)
calculatedPenalty(speed: 100, tax: 20)







   
