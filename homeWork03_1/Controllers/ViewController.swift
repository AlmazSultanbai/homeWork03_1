//
//  ViewController.swift
//  homeWork03_1
//
//  Created by Sultanbai Almaz on 22/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumberTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showNextPage(_ sender: UIButton) {
        
        
        if enterNumberTF.text?.isEmpty ?? true {
            enterNumberTF.placeholder = "Fill the Field Right and Check"
            enterNumberTF.layer.borderColor = UIColor.red.cgColor
            enterNumberTF.layer.borderWidth = 2
        } else {
            performSegue(withIdentifier: "go", sender: self)
        }
    }
    
}

