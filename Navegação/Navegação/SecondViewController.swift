//
//  SecondViewController.swift
//  Navegacao
//
//  Created by Suh on 18/11/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    //usada pra voltar a tela anterior, sem abrir novamente a tele, e sim continuando o que ja estava sendo executado, assim nao fazendo um novo arquivo.
 

}
