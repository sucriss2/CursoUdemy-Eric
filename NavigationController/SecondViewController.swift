//
//  SecondViewController.swift
//  NavigationController
//
//  Created by Suh on 18/11/21.
//

import UIKit

class SecondViewController: UIViewController {

    
    //MOSTRAR OU ESCONDER VIA NAVIGATION
    //navigationBarHidden (esconde - true desaparece - false)
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        
        //dismiss(animated: true, completion: nil) - se nao for usado o NAVIGATIONCONTROLLER
    }
    
}
