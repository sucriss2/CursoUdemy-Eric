import UIKit

var greeting = "Hello, playground"

//Operadores Binários

//Operador de Atribuição: =  (OPERADOR BINARIO QUE SERVE PARA ATRIBUIR VALOR A UMA VARIAVEL)
 let gravity = 9.81  //(ATRIBUI 9.81 Á GRAVITY)
 var  (name, age) = ("Eric", 39)  // (ATRIBUIR E CRIAR DUAS OU MAIS VARIAVEIS AO MESMO TEMPO)
 print (name)
 print (age)

//Aritméticos: Soma (+), Subtração (-), multiplicação (*), Divisão (/), Módulo (%)
  //Soma: +
   var age1 = 45
   var age2 = 26
   let sum = age1 + age2

  //Subtração: -
   let minus = age1 - age2

  //Mutltiplicação: *
   let multiply = age1 * age2

   /*let time1 = 12  (é necessario que os dois operandos seja do mesmo tipo)
   let time2 = 14.75
   let resultTimes = time1 + time2: ERRO */

  //Divisão: /
   let division = age1 / age2

  //Módulo: Resto da divisão
   let toys = 35
   let kids = 6
   let modulus = toys % kids    //resto da divisão ( 35/6 = 5 toys por kids e sobraria 5 toys

//Operadors Compostos: Atribui e opera ao mesmo tempo
  //age1 = age1 + age2
   age1 += age2
  //-=, *=, /=, %=
  var products = 200
  var lastBuy = 10
  products %= lastBuy

//Comparação: Fazem comparação entre valores (sempre retornam um Bool)
 //Maior que: >
 let grade1 = 7.5
 let grade2 = 9.8
 let betterThanFriend = grade1 > grade2

 //Menor que: <
 let grade = 8.9
 let minimumGrade = 7.0
 let reproved = grade < minimumGrade

 //Maior ou igual a: >=
 //Menor ou igual a: <=
 let approved = grade >= minimumGrade

 //Igualdade: ==  ( OPERADOR = ATRIBUIÇÃO, E == OPERADOR DE IGUALDADE)
 let teacherName = "Eric"
 let studentName = "eric"
 //let sameNames = teacherName == studentName "false" //(falso pois "E" e "e" sao diferentes)      //comparar valores identicos
 let sameNames = teacherName.lowercased() == studentName.lowercased()
    //(lowercased - tudo minusculo / uppercased - tudo maiusculo)
 
 //Desigualdade: !=   (compara se os nomes sao diferentes)
 let differentNames = teacherName != studentName










