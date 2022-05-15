//
//  BottomCollectionViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import UIKit


class BottomCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

   var cells = [BottomCellModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = UIColor(named: "darkGreen")
        delegate = self
        dataSource = self
        register(BottomCollectionViewCell.self, forCellWithReuseIdentifier: BottomCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 40
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func set(cells: [BottomCellModel]) {
        self.cells = cells
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: BottomCollectionViewCell.reuseId, for: indexPath) as! BottomCollectionViewCell
        cell.titleLabel.text = cells[indexPath.row].title
        cell.subtitleLabel.text = cells[indexPath.row].subtitle
        cell.mainimage.image = cells[indexPath.row].image
        return cell
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
            return CGSize(width: 320, height: 200)
        }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("выбрана ячейка \(indexPath.row)")
    }
    
    
    

}
