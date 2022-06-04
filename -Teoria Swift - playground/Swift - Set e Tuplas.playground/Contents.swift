import UIKit

var greeting = "Hello, playground"

//SET - COLECAO NAO ORDENADAS DE OBJETOS DE MESMO TIPO, QUE NAO PODEM SE REPETIR.
//NAO ACEITA ELEMENTOS IGUAIS, TODOS ELEMENTOS SAO UNICOS
//nao consegue fazer inferencia de TIPO

var movies: Set<String> = [
"Matrix",
"Vingadores",
"Jurassic Park",
"De Volta para o Futuro"
]

var movies2 = Set<String>()
//inserir filme
movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count)
//verificar se ja foi adicionado (duplicidade)
let result = movies.insert("Homem-Aranha: De Volta para o Lar")
print(result.inserted, result.memberAfterInsert)
//remover
movies.remove("Homem-Aranha: De Volta para o Lar")
print(movies)
//varrer um set
for movie in movies {
    print(movie)
}
//verficar lista se contem o elemento
if movies.contains("Matrix") {
    print("Matrix está na minha lista de favoritos!!")
}

//EXTRAI SUBCONJUNTOS, FAZER COMBINAÇÕES

var myWifeMovies: Set<String> = [
"De Repente 30",
"Mensagem para você",
"Sintonia de Amor",
"De Volta para o Futuro",
"Jurassic Park"
]

let favoriteMovies = movies.intersection(myWifeMovies)  //ESTÀ EM AMBAS
print(favoriteMovies)

let allmovies = movies.union(myWifeMovies) //JUNTAR AS DUAS LISTAS
print(allmovies)

movies = movies.subtracting(myWifeMovies)//SEPARANDO AS LISTAS SOMENTE OS ELEMENTOS DIFERENTE DA 1A PRA 2A.
print(movies)

//CRIANDO TUPLA - VOCÊ CONSEGUE SEPARA, OU LOCALIZAR UM ELEMENTO MESMO SENDO STRING OU INT, TEXTO OU NUMERO.

//EX: let address = "Av. Paulista, 1578, São Paulo - SP, 01310-200"

//let address = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200" )
//print(address.2) //ACESSANDO PELO INDICE (elemento 3)
  
//DEFININDO O TIPO - DANDO NOME - PODENDO ACESSAR PELO NOME
let address: (type: String,name: String, number: Int, city: String, state: String, zipCode: String) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200" )
print(address.number)
 
let (type, name, number, city, state, cep) = address
print(type)
print(name)

