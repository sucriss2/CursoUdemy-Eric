//
//  ViewController.swift
//  ViewsOutletsActions
//
//  Created by Suh on 18/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSomething(_ sender: UIButton) {
        print("runSomething")
    }
    
    @IBAction func doSomething(_ sender: Any, forEvent event: UIEvent) {
        print("doSomething")
    }
    
    @IBAction func change(_ sender: Any) {
        print("change")
    }
    //sender: ANY atribui action a qualquer elemento
}

