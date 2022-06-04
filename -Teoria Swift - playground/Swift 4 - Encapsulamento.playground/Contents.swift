import UIKit

var greeting = "Hello, playground"

//ENCAPSULAMENTO - tecnica que detalhes internos permananeção ocultos, protegendo de interferencias indevidas. TECNICA DE PROTEÇÃO DOS ARQUIVOS

class CreditCard {
    
    let number: String
    let limit: Double
    private var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
      // (final) PODE USAR O METODO POREM NAO MODIFICAR O METODO
    //func makePurchase(off value: Double, isInternational: Bool) -> Bool {
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalValue = invoiceValue + debit
        if finalValue > limit {
            return false
        } else {
            invoiceValue = finalValue
            return true
        }
    }
    //VOLTA A TAER ACESSO A INFORMACAO PRIVADA - MAS SOMENTE leitura AO VALOR SEM ALTERAÇÃO
    func getInvoice() -> Double {
        return invoiceValue
    }
    
    var invoice: Double { //variavel computada, somente de leitura
        return invoiceValue
    }
}

let crediCard = CreditCard(number: "1245-9876-2893-1837", limit: 5000)
crediCard.makePurchase(off: 1500, isInternational: true)
//print(crediCard.invoiceValue)  acrescentando o (private ao var invoiceValue)
//print(creditCard)


class DebitCreditCard: CreditCard {
    private var _balance: Double = 0
    
    var balance: Double {
        return _balance
    }
    
    func makeTransaction(of value: Double) {
        _balance += value
    }
    // modificando MAKEPURCHASE , alterar a funcao. Ja que tbm a pertence por vim da mesma classe base.
    //override func makePurchase(off value: Double, isInternational: Bool) -> Bool {
    //    _balance += value }         FOI PROTEGIDO ENTAO NÃO PODE MODIFICAR
}

let debitCreditCard = DebitCreditCard(number: "9586-8475-8765-2345", limit: 5000)
debitCreditCard.makeTransaction(of: 500)
debitCreditCard.makeTransaction(of: -100)
print(debitCreditCard.balance)


//INTERNAL - metodos, classes, usados em qualquer arquivo. Tudo é visivel por qualquer arquivo dentro do app.

//OPEN e PUBLIC - metodos de um conjunto de classes a parte do meu conjunto. Algo que outros conjuntos possa acessar.
//FILEPRIVATE - Proteção no arquivo, classes do mesmo arquivo que conversam.
//PRIVATE - restringe o uso dentro da propria declaracao, ou extensao no mesmo arquivo.


















