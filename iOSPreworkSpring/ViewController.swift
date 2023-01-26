//
//  ViewController.swift
//  iOSPreworkSpring
//
//  Created by Sathwik Yanamaddi on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am in my \(year!) year at \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) pets and it's true that I want more pets!"
        
        // Alert for our intro message
        let alertController = UIAlertController(title: "myIntroduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the alerts
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Add the action we created to alert controller
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    
    
    
}

