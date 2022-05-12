//
//  HomeCollectionView.swift
//  Meditation
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import UIKit

class HomeCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    var cells = [HomeCellModel]()
    var selectedRow = 0
    init(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = UIColor(named: "darkGreen")
        delegate = self
        dataSource = self
        register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    func set(cells: [HomeCellModel]) {
        self.cells = cells
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.reuseId, for: indexPath) as! HomeCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].mainimage
        cell.labelView.text = cells[indexPath.row].mainLabel
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        selectedRow = indexPath.row
    }
    
//    func selectedMove() -> () {
//        switch selectedRow {
//        case 0: return bottomCollectionView.set(cells:BottomCellModel.fetchBottomCells())
//        case 1: return bottomCollectionView.set(cells:BottomCellModel.fetchBottomCellsFirst())
//        case 2: return bottomCollectionView.set(cells:BottomCellModel.fetchBottomCellsSecond())
//        case 3: return bottomCollectionView.set(cells:BottomCellModel.fetchBottomCellsThird())
//        default:return bottomCollectionView.set(cells:BottomCellModel.fetchBottomCells())
//        }
//    }
            
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
