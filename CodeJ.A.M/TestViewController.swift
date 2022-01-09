//
//  TestViewController.swift
//  QuizPage
//
//  Created by Jamie Folwell on 1/8/22.
//


import UIKit

class TestViewController: UIViewController, UITextFieldDelegate {
    
    let correctAnswer = ["print(\"Hello world!\")"]

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
            if correctAnswer.contains(text){
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
