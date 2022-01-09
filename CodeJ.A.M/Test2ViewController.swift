//
//  Test2ViewController.swift
//  CodeJ.A.M
//
//  Created by Mia Berthier on 2022-01-08.
//

import UIKit

class Test2ViewController: UIViewController, UITextFieldDelegate {

    let correctAnswer1 = ["print(flt = 10.0)"]
    let correctAnswer2 = ["print(flt = float(10))"]

    @IBOutlet var field: UITextField!
    @IBOutlet var button: UIButton!
    //@IBOutlet var correctLabel: UITextView!
    //@IBOutlet var wrongLabel: UITextView!
    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var wrongLabel: UILabel!
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.returnKeyType = .done
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.becomeFirstResponder()
        field.delegate = self
        correctLabel.isHidden = true
        wrongLabel.isHidden = true
        menuButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    //@IBAction func buttonTapped(){
    //    field.resignFirstResponder()
    //    if let text = field.text{
    //        if correctAnswer.contains(text){
    //            print("works")
                //correctLabel.isHidden = false
    //        }
    //    }
    //}
    
    @IBAction func buttonTapped1(_ sender: Any) {
        if let text = field.text{
            if correctAnswer1.contains(text){
                print("works")
                correctLabel.isHidden = false
                wrongLabel.isHidden = true
                menuButton.isHidden = false
            }
            else if correctAnswer2.contains(text){
                print("works")
                correctLabel.isHidden = false
                wrongLabel.isHidden = true
                menuButton.isHidden = false
            }
            else{
                wrongLabel.isHidden = false
                correctLabel.isHidden = true
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let text = textField.text{
            print("\(text)")
        }
        return true

    }

}
