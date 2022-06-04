import UIKit

var greeting = "Hello, playground"

    //DICIONARIO - É UM CONJUNTO DE DEFINICOES ASSOCIADS A UMA PALAVAR (CHAVE E VALOR)
  //COLECAO NAO ORDENADA DE OBJETOS DE MESMO TIPO, QUE SAO ACESSADOS ATRAVES DE UMA CHAVE.

var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo"
]

//EX: DE DEFINIR O TIPO DO DICIONARIO
//DICIONARIO VAZIO
//ASSOCIAR NOME E NOTA (VALOR)
var studentGrade: [String: Double] = [:]

// RECUPERAR ITEM DO DICIONARIO
states["GO"] = "Goiaz"
//states["GO"] = "Goiás"

//ANTES DE MODIFICAR , ATUALIZAR O VALOR ASSOCIADO A CHAVE
let oldGO = states.updateValue("Goiás", forKey: "GO")
print(oldGO)

//RECUPERAR VALOR DO DICIONARIO
let myState = states["AL"]

if let state = myState {
    print(state)
}

// EXCLUIR ITENS DO DICIONARIO
states["GO"] = nil
print(states)
print(states.count)

//dicionario possui duas propriedade de (chaves(keys) e valores(values))
//states.keys (Array(states.keys) //transformando o elemento em array
let keys = Array(states.keys)
print(keys)

let values = Array(states.values)
print(values)


