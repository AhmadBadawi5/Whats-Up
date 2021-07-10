//
//  LoginViewController.swift
//  WhatsUp
//
//  Created by Ahmed Badawi.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginButton(_ sender: UIButton) {
        let email = userNameTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if error == nil{
                print("Login Successful")
                self?.performSegue(withIdentifier: "LoginToChat", sender: self)
                
            }else{
                self!.errorLabel.text = error?.localizedDescription

            }


        }
    }
}
