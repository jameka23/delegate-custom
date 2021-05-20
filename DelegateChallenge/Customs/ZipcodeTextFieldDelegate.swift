//
//  ZipcodeTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Jameka Echols on 5/19/21.
//

import Foundation
import UIKit

class ZipcodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    // Zip code field. A text field that allows only digits, and a maximum of five characters.
    
    
    // limit the # of characters in text field
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        let count = textField.text?.count
        
        if count == 5{
            textField.endEditing(true)
        }
    }
    

}
