//
//  AboutViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 15.05.22.
//

import UIKit

class AboutViewController: UIViewController {

    let aboutView = AboutView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        view.backgroundColor = UIColor(named: "darkGreen")
        view.addSubview(aboutView)
        aboutView.translatesAutoresizingMaskIntoConstraints = false
        aboutView.layer.cornerRadius = 100
        aboutView.clipsToBounds = true
        aboutView.layer.shadowColor = UIColor.black.cgColor
        aboutView.layer.shadowRadius = 10
        aboutView.layer.shadowOffset = CGSize(width: 10, height: 10)
    let constraints = [
        aboutView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3),
        aboutView.widthAnchor.constraint(equalTo: aboutView.heightAnchor),
        aboutView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        aboutView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ]

        NSLayoutConstraint.activate(constraints)
    }
}
