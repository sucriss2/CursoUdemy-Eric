//
//  ViewController.swift
//  Navegação
//
//  Created by Suh on 18/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSecondScreen(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func unwindView1(segue: UIStoryboardSegue) {
        
    }
    //usada pra retornar a pagina 1 sem passar pelas demais.
    
}

