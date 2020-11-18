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
    @IBOutlet weak var dontHaveAnAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Utility.styleTextField(emailTextField)
        Utility.styleTextField(passwordTextField)
        Utility.stylePrimaryButton(signInButton)
        styleNoAccountLabel()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
    }
    
    func styleNoAccountLabel(){
        if let font = UIFont(name: "SourceSansPro-Regular", size: 14), let boldFont = UIFont.init(name: "SourceSansPro-SemiBold", size: 14) {
           let attributedNoAccountText = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedString.Key.font : font])

            let attributedSignUpText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : boldFont])

            attributedNoAccountText.append(attributedSignUpText)
            dontHaveAnAccountLabel.attributedText = attributedNoAccountText
        }
        
        
    }
}

