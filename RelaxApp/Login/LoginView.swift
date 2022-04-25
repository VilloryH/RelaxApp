//
//  LoginView.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 19.04.22.
//

import UIKit
import Foundation


class LoginView: UIView {

    weak var loginViewController: LoginViewController? {
        didSet {
            setUpLoginView()
        }
    }
    
    
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
        button.translatesAutoresizingMaskIntoConstraints = false
       
        return button
    }()

    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loginSetUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   func loginSetUpView(){
        addSubview(logoimage)
        addSubview(signInText)
        fieldSView.addArrangedSubview(emailField)
        fieldSView.addArrangedSubview(passField)
        addSubview(fieldSView)
        addSubview(loginButton)
        addSubview(questText)
        addSubview(logupButton)
        
   
        configureTextField(x: 0, y: emailField.frame.height + 60, width: emailField.frame.width + 310 , height: 1.0, textField: emailField)
        configureTextField(x: 0, y: passField.frame.height + 60, width: passField.frame.width + 310 , height: 1.0, textField: passField)
        
        let constraints = [
            
            logoimage.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            logoimage.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
            logoimage.widthAnchor.constraint(equalToConstant: 60),
            logoimage.heightAnchor.constraint(equalToConstant: 60),
            
            signInText.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 20),
            signInText.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
            signInText.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            signInText.heightAnchor.constraint(equalToConstant: 80),
            signInText.widthAnchor.constraint(equalToConstant: 200),
         
            fieldSView.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
            fieldSView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            fieldSView.topAnchor.constraint(equalTo: signInText.bottomAnchor, constant: 40),
            fieldSView.heightAnchor.constraint(equalToConstant: 100),
            fieldSView.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -100),
        
            loginButton.bottomAnchor.constraint(equalTo: questText.topAnchor, constant: -20),
            loginButton.topAnchor.constraint(equalTo: fieldSView.bottomAnchor, constant: 100),
            loginButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            loginButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
          
            questText.bottomAnchor.constraint(equalTo: logupButton.topAnchor, constant: -20),
            questText.centerXAnchor.constraint(equalTo: centerXAnchor),
            questText.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            questText.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
            questText.heightAnchor.constraint(equalToConstant: 40),
           
            logupButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            logupButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            logupButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 60),
            logupButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -60),
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

    private func setUpLoginView(){
        if let loginViewController = loginViewController {
            translatesAutoresizingMaskIntoConstraints = false
            loginViewController.view.addSubview(self)
            leftAnchor.constraint(equalTo: loginViewController.view.leftAnchor).isActive = true
            rightAnchor.constraint(equalTo: loginViewController.view.rightAnchor).isActive = true
            topAnchor.constraint(equalTo: loginViewController.view.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: loginViewController.view.bottomAnchor).isActive = true
        }
    }
}
