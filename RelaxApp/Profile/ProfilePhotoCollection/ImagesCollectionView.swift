//
//  ImagesCollectionView.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 21.04.22.
//

import UIKit

private let reuseIdentifier = "Cell"

class ImagesCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var cells = [ImagesModelCell]()
     
     init() {
         let layout = UICollectionViewFlowLayout()
         layout.scrollDirection = .vertical
         super.init(frame: .zero, collectionViewLayout: layout)
         backgroundColor = UIColor(named: "darkGreen")
         delegate = self
         dataSource = self
         register(ImagesCollectionViewCell.self, forCellWithReuseIdentifier: ImagesCollectionViewCell.reuseId)
         translatesAutoresizingMaskIntoConstraints = false
         layout.minimumLineSpacing = 20
         showsHorizontalScrollIndicator = false
         showsVerticalScrollIndicator = false
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    func set(cells: [ImagesModelCell]) {
        self.cells = cells
    }

  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return cells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ImagesCollectionViewCell.reuseId, for: indexPath) as! ImagesCollectionViewCell
        cell.titleLabel.text = cells[indexPath.row].timeLabel
        cell.mainimage.image = cells[indexPath.row].image
      
        return cell
        
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
            return CGSize(width: 160, height: 120)
        }
        

 
}
