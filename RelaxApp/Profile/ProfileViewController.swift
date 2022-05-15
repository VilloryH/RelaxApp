//
//  ProfileViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 21.04.22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let imagesCollectionView = ImagesCollectionView()
    
    
    let leftTopButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setImage(UIImage(named: "menulogo"), for: .normal)
        button.tintColor = .white
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let rightTopButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Exit", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let logoimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "Icon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let editButton:UIButton =  {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Edit", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let profileimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let nameLabelStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 2
           stack.alignment = .fill
           stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    loginSetUpView()
    }
    
    @objc func showLoginData(_ sender: UIButton) {
        ProfileAllDataViewController().modalPresentationStyle = .formSheet
        ProfileAllDataViewController().modalTransitionStyle = .flipHorizontal
        present(ProfileAllDataViewController(), animated: true)
    }

    func loginSetUpView(){
        view.addSubview(leftTopButton)
        view.addSubview(logoimage)
        view.addSubview(rightTopButton)
        view.addSubview(profileimage)
        view.addSubview(imagesCollectionView)
        view.addSubview(nameLabelStack)
        nameLabelStack.addArrangedSubview(nameLabel)
        nameLabelStack.addArrangedSubview(editButton)
        profileimage.image = ProfileClass.profileShared.profileData.profileImage
        nameLabel.text = ProfileClass.profileShared.profileData.profileName
        editButton.addTarget(self, action: #selector(showLoginData(_:)), for: .touchUpInside)
        view.backgroundColor = UIColor(named: "darkGreen")
        let constraints = [
            
            logoimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            logoimage.leadingAnchor.constraint(equalTo: rightTopButton.trailingAnchor, constant: 20),
            logoimage.trailingAnchor.constraint(equalTo: rightTopButton.leadingAnchor, constant: -20),
            logoimage.widthAnchor.constraint(equalToConstant: 80),
            logoimage.heightAnchor.constraint(equalToConstant: 80),
            logoimage.bottomAnchor.constraint(equalTo: profileimage.topAnchor, constant: -10),
            leftTopButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            leftTopButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            leftTopButton.trailingAnchor.constraint(equalTo: logoimage.leadingAnchor, constant: -20),
            leftTopButton.widthAnchor.constraint(equalToConstant: 40),
            leftTopButton.heightAnchor.constraint(equalToConstant: 40),
            rightTopButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            rightTopButton.leadingAnchor.constraint(equalTo: leftTopButton.trailingAnchor, constant: 20),
            rightTopButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            rightTopButton.widthAnchor.constraint(equalToConstant: 60),
            rightTopButton.heightAnchor.constraint(equalToConstant: 60),
            profileimage.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 10),
            profileimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            profileimage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            profileimage.bottomAnchor.constraint(equalTo: nameLabelStack.topAnchor, constant: -20),
            nameLabelStack.topAnchor.constraint(equalTo: profileimage.bottomAnchor, constant: 20),
            nameLabelStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            nameLabelStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabelStack.bottomAnchor.constraint(equalTo: imagesCollectionView.topAnchor, constant: -30),
            nameLabelStack.heightAnchor.constraint(equalToConstant: 30),
            imagesCollectionView.topAnchor.constraint(equalTo: nameLabelStack.bottomAnchor, constant: 120),
            imagesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imagesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imagesCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
           

        ]
        NSLayoutConstraint.activate(constraints)
        
        imagesCollectionView.set(cells: ImagesModelCell.fetchImagesCell())
    }
    
   

}
