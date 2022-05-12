//
//  HomeCollectionViewCell.swift
//  Meditation
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import UIKit


class HomeCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "HomeCollectionViewCell"

    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mainImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 20
        imageView.layer.cornerCurve = .continuous
        imageView.backgroundColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
  
    let labelView:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 9, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(mainImageView1)
        contentView.addSubview(mainImageView)
        contentView.addSubview(labelView)
      
        
        mainImageView.leadingAnchor.constraint(equalTo: mainImageView1.leadingAnchor, constant: 15).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: mainImageView1.trailingAnchor, constant: -15).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: mainImageView1.bottomAnchor, constant: -15).isActive = true
        mainImageView.topAnchor.constraint(equalTo: mainImageView1.topAnchor, constant: 15).isActive = true
        
        mainImageView1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        mainImageView1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        mainImageView1.bottomAnchor.constraint(equalTo: labelView.topAnchor, constant: -20).isActive = true
        mainImageView1.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true

        labelView.topAnchor.constraint(equalTo: mainImageView.bottomAnchor).isActive = true
        labelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        labelView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        labelView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
