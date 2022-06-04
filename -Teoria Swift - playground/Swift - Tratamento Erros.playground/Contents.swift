import UIKit

var greeting = "Hello, playground"

//Tratamento de Erros

/*
func conert(value: String) -. [Int] {
 ...
 ...
 if someProblem{
      return nil
   } else {
      return array
   }
 }
 
 let result = convert("Algo")
 print(result)  //nil  <-------- QUAL O MOTIVO DE TER DADO ERRADO??
*/

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}
//throws - dispara o erro (try)
func login(userName : String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "eric" {
            throw LoginError.wrongLogin
        }
        if password != "123456" {
            throw LoginError.wrongPassword
        }
        return false
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}
do {
 let loginResult = try login(userName: "eric", password: "123456")
} catch LoginError.wrongLogin {
    print("Nome do úsuario inválido!")   //print(error)
} catch LoginError.wrongPassword {
    print("Senha inválida!")
} catch LoginError.noInternetConnection {
    print("Sem conexão!")
}

let loginResult = try? login(userName: "eric", password: "123456")



// do - inicar a busca de error
// catch - capturar error
// try - tratar o error
