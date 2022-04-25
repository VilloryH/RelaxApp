//
//  HomeViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import UIKit

class HomeViewController: UIViewController {

    private var homeCollectionView = HomeCollectionView()
    private var bottomCollectionView = BottomCollectionView()
    
    let greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "С возращением, Человек!"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let feelingLabel: UILabel = {
        let label = UILabel()
        label.text = "Каким ты себя ощущаешь сегодня?"
        label.textColor = .gray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        button.setImage(UIImage(named: "ProfilePic"), for: .normal)
        button.layer.cornerRadius = 30
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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkGreen")
       
       loginSetUpView()
    }
    
    func loginSetUpView(){
        view.addSubview(leftTopButton)
        view.addSubview(logoimage)
        view.addSubview(rightTopButton)
        view.addSubview(greetingLabel)
        view.addSubview(feelingLabel)
        view.addSubview(homeCollectionView)
        view.addSubview(bottomCollectionView)
      
        
        let constraints = [
            
            logoimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            logoimage.leadingAnchor.constraint(equalTo: rightTopButton.trailingAnchor, constant: 20),
            logoimage.trailingAnchor.constraint(equalTo: rightTopButton.leadingAnchor, constant: -20),
            logoimage.widthAnchor.constraint(equalToConstant: 80),
            logoimage.heightAnchor.constraint(equalToConstant: 80),
            logoimage.bottomAnchor.constraint(equalTo: greetingLabel.topAnchor, constant: -10),
            
            leftTopButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            leftTopButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            leftTopButton.trailingAnchor.constraint(equalTo: logoimage.leadingAnchor, constant: -20),
            leftTopButton.widthAnchor.constraint(equalToConstant: 40),
            leftTopButton.heightAnchor.constraint(equalToConstant: 40),
            
            rightTopButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            rightTopButton.leadingAnchor.constraint(equalTo: leftTopButton.trailingAnchor, constant: 20),
            rightTopButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            rightTopButton.widthAnchor.constraint(equalToConstant: 60),
            rightTopButton.heightAnchor.constraint(equalToConstant: 60),
            
            
            greetingLabel.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 10),
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            greetingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            greetingLabel.bottomAnchor.constraint(equalTo: feelingLabel.topAnchor, constant: -5),
            greetingLabel.heightAnchor.constraint(equalToConstant: 30),
            
            feelingLabel.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 10),
            feelingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            feelingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            feelingLabel.bottomAnchor.constraint(equalTo: homeCollectionView.topAnchor, constant: -5),
            feelingLabel.heightAnchor.constraint(equalToConstant: 30),
            
            
            homeCollectionView.topAnchor.constraint(equalTo: feelingLabel.bottomAnchor, constant: 10),
            homeCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            homeCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            homeCollectionView.bottomAnchor.constraint(equalTo: bottomCollectionView.topAnchor, constant: -10),
            homeCollectionView.heightAnchor.constraint(equalToConstant: 150),
            
            bottomCollectionView.topAnchor.constraint(equalTo: homeCollectionView.bottomAnchor, constant: 10),
            bottomCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            bottomCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            bottomCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
          
        ]
        NSLayoutConstraint.activate(constraints)
        
        homeCollectionView.set(cells: HomeCellModel.fetchCells())
        bottomCollectionView.set(cells: BottomCellModel.fetchBottomCells())
        
    }


}
