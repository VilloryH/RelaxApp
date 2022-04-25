//
//  ViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 14.04.22.
//

import UIKit

class MainController: UIViewController {

  
    
    let logoImage: UIImageView = {
        let mainimage = UIImageView()
        mainimage.contentMode = .scaleToFill
        mainimage.image = UIImage(named: "splashscreen")
        mainimage.translatesAutoresizingMaskIntoConstraints = false
        return mainimage
    }()
   
    
    
    let questText: UITextView = {
        let text = UITextView()
        text.text = "Don't you have an account?"
        text.backgroundColor = UIColor(named: "darkGreen")
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.font = UIFont.boldSystemFont(ofSize: 18)
        text.textColor = .white
        return text
    }()
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Register", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.textColor = UIColor(named: "lightGreen")
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showLogin(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func showLogin(_ sender: UIButton){
        print("go")
        let vc2 = LoginViewController()
       
        vc2.modalPresentationStyle = .fullScreen
        vc2.modalTransitionStyle = .coverVertical
        present(vc2, animated: true)
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    func setUpView() {
        view.addSubview(logoImage)
        view.addSubview(enterButton)
        view.addSubview(registerButton)
        view.addSubview(questText)
        
        let constraints = [
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            logoImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
    
            enterButton.heightAnchor.constraint(equalToConstant: 60),
            enterButton.widthAnchor.constraint(equalToConstant: 300),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.bottomAnchor.constraint(equalTo: questText.topAnchor, constant: -20),
         
            questText.widthAnchor.constraint(equalToConstant: 300),
            questText.heightAnchor.constraint(equalToConstant: 60),
            questText.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 20),
            questText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            questText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questText.trailingAnchor.constraint(equalTo: registerButton.leadingAnchor, constant: -5),
            
            registerButton.heightAnchor.constraint(equalToConstant: 60),
            registerButton.widthAnchor.constraint(equalToConstant: 80),
            registerButton.leadingAnchor.constraint(equalTo: questText.trailingAnchor, constant: 5),
            registerButton.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 10),
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        
        ]
            
        NSLayoutConstraint.activate(constraints)
         
    }

}

