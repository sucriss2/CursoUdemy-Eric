import UIKit

var greeting = "Hello, playground"

//Classes(referencias) vc Structs (copias)

struct Student {   // passados por copias(STRUCTS)
    var name: String
    var age: Int
}

class Person {   // passado por referencias(CLASSES)
    var name: String
    var age: Int
    weak var friend: Person?   //(weak) referencia fraca e caso fique zero,é desalocado da memoria.
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {  //desconstrutor
        print("\(name) foi desalocado da memória")
    }
}

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)
//==========================================

var person1: Person? = Person(name: "Felipe", age: 27)
var person2: Person? = Person(name: "Henrique", age: 44)

person1!.name = "Alisson"
person1!.age = 33

print(person2!.name, person2!.age)

person1?.friend = person2
person2?.friend = person1

person1 = nil //memory leak - vazamento de memoria
person2 = nil


//Value Type - valores do tipo por copias

//Reference Type - valores passados por referencias

let array: [Int] = [3, 4, 6, 7, 87, 86, 76, 3]
 var array2 = array

//Copy On Write -
array2[0] = 45
print(array2)
print(array)

//memory leak - vazamento de memoria
//ARC - contagem automatica de referencia
//WEAK - referencia fraca
