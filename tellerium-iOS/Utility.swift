//
//  File.swift
//  tellerium-iOS
//
//  Created by Icelod on 11/10/20.
//  Copyright © 2020 Icelod. All rights reserved.
//

import UIKit

class Utility {
    static func styleTextField(_ textField: UITextField){
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.layer.borderColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1).cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4

    }
    
    static func stylePrimaryButton(_ button : UIButton){
        button.layer.backgroundColor = UIColor(red: 0.017, green: 0.4, blue: 0.216, alpha: 1).cgColor
        button.layer.cornerRadius = 4
    }
}
