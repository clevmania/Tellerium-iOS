//
//  RegisterViewController.swift
//  tellerium-iOS
//
//  Created by Icelod on 11/18/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var etEmailTextField: UITextField!
    @IBOutlet weak var etPasswordTextField: UITextField!
    @IBOutlet weak var etLastNameTextField: UITextField!
    @IBOutlet weak var etFirstNameTextField: UITextField!
    @IBOutlet weak var etMobileTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func registerUserButton(_ sender: Any) {
        if let email = etEmailTextField.text, let password = etPasswordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                if let err = error {
                    print(err.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "RegisterIdentifier", sender:self)
                }
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
