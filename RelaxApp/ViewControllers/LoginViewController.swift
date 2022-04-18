//
//  LoginViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 17.04.22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
   
    
    let logoimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "Icon-1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let loginButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let logupButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setTitle("Log Up", for: .normal)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signInText: UITextView = {
        let text = UITextView()
        text.text = "Sign In"
        text.backgroundColor = UIColor(named: "darkGreen")
        text.textAlignment = .center
        text.font = UIFont.boldSystemFont(ofSize: 30)
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let questText: UITextView = {
        let text = UITextView()
        text.text = "Don't you have an account?"
        text.backgroundColor = UIColor(named: "darkGreen")
        text.textAlignment = .center
        text.font = UIFont.boldSystemFont(ofSize: 18)
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let emailField: UITextField = {
        let eField = UITextField()
        eField.returnKeyType = .done
        eField.autocorrectionType = .no
        eField.textColor = .white
        eField.backgroundColor = .gray
        eField.font = UIFont.boldSystemFont(ofSize: 20)
        eField.translatesAutoresizingMaskIntoConstraints = false
        return eField
    }()
    
    override func viewDidLoad() {
    view.backgroundColor = UIColor(named: "darkGreen")
       loginSetUpView()
       
    }
    
    func loginSetUpView(){
        view.addSubview(loginButton)
        view.addSubview(logupButton)
        view.addSubview(questText)
        view.addSubview(emailField)
        view.addSubview(logoimage)
        view.addSubview(signInText)
        configureTextField(x: 0, y: emailField.frame.height - 1, width: emailField.frame.width + 310 , height: 1.0, textField: emailField)
        
        let constraints = [
            
            logoimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            logoimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoimage.widthAnchor.constraint(equalToConstant: 60),
            logoimage.heightAnchor.constraint(equalToConstant: 60),
            
            signInText.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 20),
            signInText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signInText.heightAnchor.constraint(equalToConstant: 80),
            
            emailField.topAnchor.constraint(equalTo: signInText.bottomAnchor, constant: 40),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            emailField.heightAnchor.constraint(equalToConstant: 60),
          
            
            logupButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            logupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logupButton.heightAnchor.constraint(equalToConstant: 60),
            logupButton.widthAnchor.constraint(equalToConstant: 300),
            
            questText.bottomAnchor.constraint(equalTo: logupButton.topAnchor, constant: -10),
            questText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questText.heightAnchor.constraint(equalToConstant: 60),
            questText.widthAnchor.constraint(equalToConstant: 300),
            
            loginButton.bottomAnchor.constraint(equalTo: questText.topAnchor, constant: -20),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
            loginButton.widthAnchor.constraint(equalToConstant: 300)
            
            
        ]
        NSLayoutConstraint.activate(constraints)
        
    }
    
    
    func configureTextField(x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat,textField:UITextField)

    {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: x, y: y, width: width, height: height)
           bottomLine.backgroundColor = UIColor.white.cgColor
           textField.borderStyle = UITextField.BorderStyle.none
           textField.layer.addSublayer(bottomLine)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailField.resignFirstResponder()
        return true
    }
}
