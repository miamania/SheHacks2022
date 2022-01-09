//
//  LogInViewController.swift
//  CodeJ.A.M
//
//  Created by Mia Berthier on 2022-01-08.
//

import UIKit

    

class LogInViewController: UIViewController {

    @IBOutlet var RegisterName: UITextField!
    @IBOutlet var LoginID: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Create a variable that you want to send
        var name = ""
        print(RegisterName.text)
        
        if LoginID.text == "0.0.26551992"{
            name = "Mia"
        } else if LoginID.text == "0.0.26551951"{
            name = "Angele"
        } else if LoginID.text == "0.0.26551999"{
            name = "Jamie"
        } else if RegisterName.text == "Mia" {
            name = "Mia"
        } else if RegisterName.text == "Jamie" {
            name = "Jamie"
        } else if RegisterName.text == "Angele" {
               name = "Angele"
        }

        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destination as! LanguagesViewController
        destinationVC.namevar = name
        print(name)
    }

}
