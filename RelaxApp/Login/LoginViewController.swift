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
    
    let fieldSView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
           stack.spacing = 10.0
           stack.alignment = .fill
           stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let loginButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.addTarget(self, action: #selector(login(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func login(_ sender: UIButton){
        if emailField.text == "login" && passField.text == "123" {
            let vc = TabBarViewController()
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .coverVertical
            present(vc, animated: true)
        }
        else {present(alertController, animated: true, completion: nil)}
    }
    
    let alertController:UIAlertController = {
        let alert = UIAlertController(title: "Incorrect", message: "Login or password is incorrect.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        return alert
    }()
    
    let logupButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setTitle("Log Up", for: .normal)
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signInText: UITextView = {
        let text = UITextView()
        text.text = "Sign In"
        text.backgroundColor = UIColor(named: "darkGreen")
        text.textAlignment  = .left
        text.font = UIFont.boldSystemFont(ofSize: 50)
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
        eField.autocapitalizationType = .none
        eField.textColor = .white
        eField.backgroundColor = UIColor(named: "darkGreen")
        eField.attributedPlaceholder = NSAttributedString(string: "Email",
                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        eField.font = UIFont.boldSystemFont(ofSize: 20)
        eField.translatesAutoresizingMaskIntoConstraints = false
        return eField
    }()
    
    let passField: UITextField = {
        let pField = UITextField()
        pField.returnKeyType = .done
        pField.autocorrectionType = .no
        pField.textColor = .white
        pField.isSecureTextEntry = true
        pField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                          attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        pField.font = UIFont.boldSystemFont(ofSize: 20)
        pField.translatesAutoresizingMaskIntoConstraints = false
        return pField
    }()
    
    override func viewDidLoad() {
    view.backgroundColor = UIColor(named: "darkGreen")
      
        loginSetUpView()
        
       
    }
    
    func loginSetUpView(){
        view.addSubview(loginButton)
        view.addSubview(logupButton)
        view.addSubview(questText)
        view.addSubview(logoimage)
        view.addSubview(signInText)
        view.addSubview(fieldSView)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        fieldSView.addArrangedSubview(emailField)
        fieldSView.addArrangedSubview(passField)
        
        configureTextField(x: 0, y: emailField.frame.height + 60, width: emailField.frame.width + 310 , height: 1.0, textField: emailField)
        configureTextField(x: 0, y: passField.frame.height + 60, width: passField.frame.width + 310 , height: 1.0, textField: passField)
        
        let constraints = [
            
            logoimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            logoimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logoimage.widthAnchor.constraint(equalToConstant: 60),
            logoimage.heightAnchor.constraint(equalToConstant: 60),
            
            signInText.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 20),
            signInText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            signInText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signInText.heightAnchor.constraint(equalToConstant: 80),
         
            fieldSView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            fieldSView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fieldSView.topAnchor.constraint(equalTo: signInText.bottomAnchor, constant: 40),
            fieldSView.heightAnchor.constraint(equalToConstant: 100),
            fieldSView.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -100),
        
            loginButton.bottomAnchor.constraint(equalTo: questText.topAnchor, constant: -20),
            loginButton.topAnchor.constraint(equalTo: fieldSView.bottomAnchor, constant: 100),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
          
            questText.bottomAnchor.constraint(equalTo: logupButton.topAnchor, constant: -20),
            questText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            questText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            questText.heightAnchor.constraint(equalToConstant: 40),
           
            logupButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            logupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            logupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            logupButton.heightAnchor.constraint(equalToConstant: 60),
     
          
          
        ]
        NSLayoutConstraint.activate(constraints)
        
    }
    
    
    func configureTextField(x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat,textField:UITextField)

    {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: x, y: y, width: width, height: height)
           bottomLine.backgroundColor = UIColor.gray.cgColor
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
