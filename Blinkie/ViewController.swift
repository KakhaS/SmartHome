//
//  ViewController.swift
//  Blinkie
//
//  Created by Kakha Sepashvili on 07.04.21.
//

import UIKit
import GoogleSignIn
import FirebaseAuth


class ViewController: UIViewController {
    
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Log in"
        return label
    }()
    
    private let emailField: UITextField = {
        let emailField = UITextField()
        emailField.placeholder = "Email Address"
        emailField.layer.borderWidth = 1
        emailField.autocapitalizationType = .none
        emailField.layer.borderColor = UIColor.blue.cgColor
        emailField.leftViewMode = .always
        emailField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        return emailField
    }()
    
    private let passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.layer.borderWidth = 1
        passwordField.isSecureTextEntry =   true
        passwordField.layer.borderColor = UIColor.blue.cgColor
        passwordField.leftViewMode = .always
        passwordField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        return passwordField
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Continue", for: .normal)
        return button
    }()
    
    private let signOutButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Log out", for: .normal)
        return button
    }()
    
    

    
    @IBOutlet var signInButton: GIDSignInButton!
    @IBOutlet weak var backgroundPhoto: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
//background photo
        backgroundPhoto.image = UIImage(named: "BackgroundFirstPage")
        backgroundPhoto.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        backgroundPhoto.contentMode = .scaleToFill
        backgroundPhoto.alpha = 0.2
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        
        //check if user is signed
        //        if GIDSignIn.sharedInstance()?.currentUser != nil {
        //            //signed in
        //        } else {
        //            GIDSignIn.sharedInstance()?.signIn()
        //        }
        view.addSubview(label)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        if FirebaseAuth.Auth.auth().currentUser != nil {
            label.isHidden = true
            emailField.isHidden = true
            passwordField.isHidden = true
            button.isHidden = true
         
            view.addSubview(signOutButton)
            signOutButton.frame = CGRect(x: 20, y: 150, width: view.frame.size.width - 40, height: 52)
            signInButton.addTarget(self, action: #selector(logOutTapped), for: .touchUpInside)
       
        }
    }
    
    @objc private func logOutTapped() {
        do  {
            try FirebaseAuth.Auth.auth().signOut()
            label.isHidden = false
            emailField.isHidden = false
            passwordField.isHidden = false
            button.isHidden = false
            
            signOutButton.removeFromSuperview()
            
        }
        catch {
            print("An error occured.")
        }
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        // sizes and location on screen
        
        label.frame = CGRect(x: 0,
                             y: 70,
                             width: view.frame.size.width,
                             height: 100)
        emailField.frame = CGRect(x: 220,
                                  y:450,
                                  width: 400,
                                  height: 40)
        passwordField.frame = CGRect(x: 220,
                                     y: 530,
                                     width: 400,
                                     height: 40)
        button.frame = CGRect(x: 300,
                              y: 700,
                              width: 250,
                              height: 50)
        
        signInButton.frame = CGRect(x: 296, y: 770, width: 260, height: 55)
        
    
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if FirebaseAuth.Auth.auth().currentUser == nil {
            emailField.becomeFirstResponder()
        }
        
      
    }
    @objc private func didTapButton() {
        guard let email = emailField.text, !email.isEmpty,
              let password = passwordField.text, !password.isEmpty else {
            print("Missing field data")
            return
        }
        
        func skip() {
         performSegue(withIdentifier: "temp", sender: self)
        }
        
        //Get auth instance
        //attemt sign in
        // if failure, present alert to create account
        //if user continues, create account
        
        // check sign in on app launch
        // allow user to sign out with button
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] result, error in
            guard let strongSelf = self else{
                return
            }
            
            guard error == nil else {
                // show account creation
                strongSelf.showCreateAccount(email: email, password: password)
                return
            }
            print("You have Sign in")
            strongSelf.label.isHidden = true
            strongSelf.emailField.isHidden = true
            strongSelf.passwordField.isHidden = true
            strongSelf.button.isHidden = true
            
            strongSelf.emailField.resignFirstResponder()
            strongSelf.passwordField.resignFirstResponder()
        })
    }
    
    func showCreateAccount(email: String, password: String) {
        let alert = UIAlertController(title: "Create Account", message: "Looks Like new account ! Would you like to create an account?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Continue",
                                      style: .default,
                                      handler: {_ in
                                        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password, completion: { [weak self] result, error in
                                            guard let strongSelf = self else{
                                                return
                                            }
                                            
                                            guard error == nil else {
                                                // show account creation
                                                print("Woops ! Account creation failed")
                                                return
                                            }
                                            print("You have Signed in")
                                            strongSelf.label.isHidden = true
                                            strongSelf.emailField.isHidden = true
                                            strongSelf.passwordField.isHidden = true
                                            strongSelf.button.isHidden = true
                                            
                                            strongSelf.emailField.resignFirstResponder()
                                            strongSelf.emailField.resignFirstResponder()
                                            
                                        })
                                      }))
        alert.addAction(UIAlertAction(title: "Cancel",
                                      style: .cancel,
                                      handler: {_ in
                                      }))
        
        present(alert, animated: true)
    }
}
