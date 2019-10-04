//
//  ViewController4.swift
//  1차보충
//
//  Created by TaeJin Oh on 03/10/2019.
//  Copyright © 2019 TaeJin Oh. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginUserid: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           if textField == self.loginUserid {
               textField.resignFirstResponder()
               self.loginPassword.becomeFirstResponder()
           }
           textField.resignFirstResponder()
           return true
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
