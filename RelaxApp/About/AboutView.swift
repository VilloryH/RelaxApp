//
//  AboutView.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 15.05.22.
//

import UIKit

class AboutView: UIView {

    let logoImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "profileim")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Petrovskiy V.S."
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let groupLabel: UILabel = {
        let label = UILabel()
        label.text = "981072"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "lightGreen")
        addSubview(logoImage)
        addSubview(nameLabel)
        addSubview(groupLabel)
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: logoImage.topAnchor, constant: -5).isActive = true
        
        logoImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        logoImage.bottomAnchor.constraint(equalTo: groupLabel.topAnchor, constant: -5).isActive = true
        logoImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.75).isActive = true
        logoImage.widthAnchor.constraint(equalTo: logoImage.heightAnchor).isActive = true
        
        groupLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 5).isActive = true
        groupLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        groupLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        groupLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
