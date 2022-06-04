//
//  ViewController.swift
//  Labels
//
//  Created by Suh on 19/11/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfSenha: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tfEmail.delegate = self
        tfSenha.delegate = self
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail {
            print("Enviando dados ao servidor")
            textField.resignFirstResponder()
            //view.endEditing(true)
        }
        
        return true
    }

}

