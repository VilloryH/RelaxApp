//
//  ImagesCollectionViewCell.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 21.04.22.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {

   static let reuseId = "ImagesCollectionViewCell"
    
    
    let mainimage:UIImageView = {
        let image = UIImageView()
       
        image.layer.cornerRadius = 30
        image.layer.cornerCurve = .continuous
        image.layer.masksToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(mainimage)
        contentView.addSubview(titleLabel)
        contentView.backgroundColor =  UIColor(named: "darkGreen")
       
        mainimage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainimage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainimage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainimage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: mainimage.leadingAnchor, constant: 10).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: mainimage.bottomAnchor, constant: -10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
