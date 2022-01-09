//
//  LanguagesViewController.swift
//  CodeJ.A.M
//
//  Created by Mia Berthier on 2022-01-08.
//

import UIKit

class LanguagesViewController: UIViewController {
    
    @IBOutlet var WelcomeLabel: UILabel!
    var namevar : String?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(namevar)
        
        // Do any additional setup after loading the view.
        var idvar = ""
        var name = ""
        
        if namevar == "Mia"{
            idvar = "0.0.26551992"
            name = "Mia"
        } else if namevar == "Angele"{
            idvar = "0.0.26551951"
            name = "Angele"
        } else if namevar == "Jamie"{
            idvar = "0.0.26551999"
            name = "Jamie"
        } else {
            idvar = "ERROR"
            namevar = "ERROR"
        }
        WelcomeLabel.text = "Welcome " + name + ", id: " + idvar
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
