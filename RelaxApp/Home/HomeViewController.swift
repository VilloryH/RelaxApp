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
    private let horocsopeVC = HoroscopeViewController()
    
    let greetingLabel: UILabel = {
        let label = UILabel()
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
        button.layer.cornerRadius = 30
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let logoimage:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Icon"), for: .normal)
        button.layer.cornerRadius = 30
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let upImageStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 90
        stack.alignment = .fill
        stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkGreen")
       
       loginSetUpView()
    }
    
    
    
    
    func loginSetUpView(){
        upImageStackView.addArrangedSubview(leftTopButton)
        upImageStackView.addArrangedSubview(logoimage)
        upImageStackView.addArrangedSubview(rightTopButton)
        view.addSubview(upImageStackView)
        view.addSubview(greetingLabel)
        view.addSubview(feelingLabel)
        view.addSubview(homeCollectionView)
        view.addSubview(bottomCollectionView)
        logoimage.addTarget(self, action: #selector(tappedLogo(_:)), for: .touchUpInside)
        rightTopButton.setImage(ProfileClass.profileShared.profileData.profileImage, for: .normal)
        greetingLabel.text = "С возвращением, \(ProfileClass.profileShared.profileData.profileName)"
        
        let constraints = [
            
            upImageStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            upImageStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            upImageStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            upImageStackView.bottomAnchor.constraint(equalTo: greetingLabel.topAnchor, constant: -10),
            upImageStackView.heightAnchor.constraint(equalToConstant: 60),
            
            greetingLabel.topAnchor.constraint(equalTo: upImageStackView.bottomAnchor, constant: 10),
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
    
    @objc func tappedLogo(_ sender:UIButton) {
        
        horocsopeVC.modalPresentationStyle = .formSheet
        horocsopeVC.modalTransitionStyle = .coverVertical
        present(horocsopeVC, animated: true)
        
    }


}
