//
//  HoroscopeViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 26.04.22.
//

import UIKit
import SwiftyJSON
import Alamofire




class HoroscopeViewController: UIViewController {
    
  
    let horosign = Horoscope.aquarius.rawValue
   
   
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Znak"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "date"
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "desription"
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        getData(url: horosign)
      loginSetUpView()
      
    
    }
    
    func getData(url :String) {
        AF.request(url, method: .get).validate().response {
            response in
            switch response.result {
            case .success(let value):
                let answer = JSON(value!)
                self.nameLabel.text = answer["sign"].stringValue.capitalized
                self.dateLabel.text = answer["date"].stringValue
                self.descriptionLabel.text = answer["horoscope"].stringValue
                
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
    
    func loginSetUpView(){
        view.addSubview(nameLabel)
        view.addSubview(dateLabel)
        view.addSubview(descriptionLabel)
      
        view.backgroundColor = UIColor(named: "darkGreen")
        let constraints = [
            
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            nameLabel.bottomAnchor.constraint(equalTo: dateLabel.topAnchor, constant: -20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            dateLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -10),
            dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            descriptionLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/3),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

        ]
        NSLayoutConstraint.activate(constraints)
        
       
    }


}
