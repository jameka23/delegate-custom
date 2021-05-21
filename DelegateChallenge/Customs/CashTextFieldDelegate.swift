//
//  CashTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Jameka Echols on 5/19/21.
//

import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {

    var onesPlace :Int = 0
    var tensPlace : Int = 0
    var dollarsPlace: Int = 0
    
    var cashAmt = ""
    var textFieldAmount = "$0.00"
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        let userInput = textField.text ?? "0"
        
        if onesPlace == 0 {
            cashAmt.append(userInput)
            onesPlace = 1
            textFieldAmount = "$0.0"
        }
        
    }
    
}
