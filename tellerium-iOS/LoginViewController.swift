//
//  ViewController.swift
//  tellerium-iOS
//
//  Created by Icelod on 11/9/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Utility.styleTextField(emailTextField)
        Utility.styleTextField(passwordTextField)
        Utility.stylePrimaryButton(signInButton)
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
    }
}

