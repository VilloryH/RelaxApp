//
//  ViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 14.04.22.
//

import UIKit

let tutorialImages = [UIImage(named: "im1"), UIImage(named: "im2"), UIImage(named: "im3"), UIImage(named: "im4"), UIImage(named: "im5")]
var tutorialImagesCount = 0

class MainController: UIViewController {
    let logoImage: UIImageView = {
        let mainimage = UIImageView()
        mainimage.contentMode = .scaleAspectFit
        mainimage.translatesAutoresizingMaskIntoConstraints = false
        return mainimage
    }()
    let questText: UITextView = {
        let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.text = "No account?"
        text.backgroundColor = UIColor(named: "darkGreen")
        text.font = UIFont.boldSystemFont(ofSize: 18)
        text.textColor = .white
        return text
    }()
    let registerButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(UIColor.systemGreen, for: .normal)
        button.setTitle("Register", for: .normal)
        button.backgroundColor = UIColor(named: "darkGreen")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let bottomStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    @objc func showLogin(_ sender: UIButton){
        print("go")
        let vc2 = LoginViewController()
        vc2.modalPresentationStyle = .fullScreen
        vc2.modalTransitionStyle = .coverVertical
        present(vc2, animated: true)
    }
    @objc func showNextTutorialImage(_ sender: UIButton){
        print("goNext")
        logoImage.image = tutorialImages[tutorialImagesCount]
        tutorialImagesCount += 1
        setUpView()
        print(tutorialImagesCount)
    }
    func setUpView() {
        if tutorialImagesCount < 4 {
            logoImage.image = tutorialImages[tutorialImagesCount]
            enterButton.setTitle("Next", for: .normal)
            questText.isHidden = true
            registerButton.isHidden = true
            enterButton.addTarget(self, action: #selector(showNextTutorialImage(_:)), for: .touchUpInside)
        }
        else {
            enterButton.setTitle("Log In", for: .normal)
            questText.isHidden = false
            registerButton.isHidden = false
            logoImage.image = UIImage(named: "splashscreen")
            enterButton.addTarget(self, action: #selector(showLogin(_:)), for: .touchUpInside)
        }
        view.addSubview(logoImage)
        view.addSubview(enterButton)
        view.addSubview(bottomStackView)
        bottomStackView.addArrangedSubview(questText)
        bottomStackView.addArrangedSubview(registerButton)
        
        let constraints = [
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            logoImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            enterButton.heightAnchor.constraint(equalToConstant: 60),
            enterButton.widthAnchor.constraint(equalToConstant: 300),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: -20),
            bottomStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomStackView.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 20),
            bottomStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            questText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}

