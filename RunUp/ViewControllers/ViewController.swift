//
//  ViewController.swift
//  RunUp
//
//  Created by Ahmed Bazina on 13/11/2019.
//  Copyright © 2019 Ahmed Bazina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var codeTextField: OneTimePassword!
    
    let alert = AlertService.shared
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        codeTextField.defaultCharacter = "_"
        codeTextField.configure()
        codeTextField.didEnterLastDigit = { [weak self] code in
            print(code)
            guard let alert = self?.alert.successMessage(with: code) else { return }
            self?.present(alert, animated: true)
        }
            }
        }
