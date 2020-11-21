//
//  ViewController.swift
//  tellerium-iOS
//
//  Created by Icelod on 11/9/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var noAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utility.styleTextField(emailTextField)
        Utility.styleTextField(passwordTextField)
        Utility.stylePrimaryButton(signInButton)
        styleNoAccountLabel()
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                if let err = error {
                    print(err.localizedDescription)
                }else {
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }

    }
    
    func styleNoAccountLabel(){
        if let font = UIFont(name: "SourceSansPro-Regular", size: 14), let boldFont = UIFont.init(name: "SourceSansPro-SemiBold", size: 14) {
            let attributedNoAccountText = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedString.Key.font : font, NSAttributedString.Key.foregroundColor : UIColor(red: 0.129, green: 0.122, blue: 0.122, alpha: 1)])

            let attributedSignUpText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : boldFont, NSAttributedString.Key.foregroundColor : UIColor(red: 0.129, green: 0.122, blue: 0.122, alpha: 1)])

            attributedNoAccountText.append(attributedSignUpText)
            noAccountButton.setAttributedTitle(attributedNoAccountText, for: .normal)
        }
        
        
    }
}

