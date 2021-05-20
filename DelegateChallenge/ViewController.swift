//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Jameka Echols on 5/19/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // variables
    
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var slider: UISwitch!
    @IBOutlet weak var lockableTextField: UITextField!
    
    // delegates
    var zipcodeDelegate = ZipcodeTextFieldDelegate()
    var cashDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the delegates
        self.zipcodeTextField.delegate = zipcodeDelegate
        self.cashTextField.delegate = cashDelegate
        self.lockableTextField.delegate = self
        
        // automatically make sure the slider is off ( can't edit text field )
        slider.isOn = false
    }
    

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if slider.isOn {
            return true
        }
        else {
            return false
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if !slider.isOn{
            return true
        }
        else {
            return false
        }
    }

}

