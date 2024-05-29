//
//  ViewController.swift
//  ManchegoSnapchat
//
//  Created by Byron on 22/05/24.
//

import UIKit
import FirebaseAuth
import Firebase



class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password:passwordTextField.text!) {(user, error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguiente: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
}
