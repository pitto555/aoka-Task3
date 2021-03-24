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
        
        var number = Int(textField.text!) ?? 0
        var number2 = Int(textField2.text!) ?? 0
        
        if leftSwitch.isOn {
            
            number = number - number * 2
            
        }
        
        if rightSwitch.isOn {
            
            number2 = number2 - number2 * 2
            
        }
        
        leftIntLabel.text = "\(number)"
        rightIntLabel.text = "\(number2)"
        answerLabel.text = String(number + number2)
    }
    
}

