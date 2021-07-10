//
//  SignUpViewController.swift
//  WhatsUp
//
//  Created by Ahmed Badawi.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var userNameTextField: UITextField!
    
     @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBAction func signUpButton(_ sender: UIButton) {
        let email = userNameTextField.text!
        let password = passwordTextField.text!
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil{
                print("Sign Up Successful")
                self.performSegue(withIdentifier: "SignUpToChat", sender: self)

            }else{
                self.errorLabel.text = error?.localizedDescription

            }
            
            
        }
        
        
    }
}
