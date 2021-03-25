//
//  ViewController.swift
//  Task3App
//
//  Created by 光気増井 on 2021/03/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    
    @IBOutlet private weak var leftIntLabel: UILabel!
    @IBOutlet private weak var rightIntLabel: UILabel!
    
    @IBOutlet private weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }
    
    @IBAction func answerAction(_ sender: Any) {
        let number = Int(textField.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0

        let signedNumber: Int
        if leftSwitch.isOn {
            signedNumber = -number
        } else {
            signedNumber = number
        }

        let signedNumber2: Int
        if rightSwitch.isOn {
            signedNumber2 = -number2
        } else {
            signedNumber2 = number2
        }
        
        leftIntLabel.text = "\(signedNumber)"
        rightIntLabel.text = "\(signedNumber2)"
        answerLabel.text = String(signedNumber + signedNumber2)
    }
}
