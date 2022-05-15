//
//  HomeCollCell.swift
//  Meditation
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import Foundation
import UIKit

struct HomeCellModel {
    var mainimage: UIImage
    var mainLabel: String

    
    static func fetchCells() -> [HomeCellModel]{
        let firstItem = HomeCellModel(mainimage: UIImage(named: "Calm")!, mainLabel: "Спокойным")
        let secondItem = HomeCellModel(mainimage: UIImage(named: "Relax")!, mainLabel: "Расслабленным")
        let thirdItem = HomeCellModel(mainimage: UIImage(named: "Focus")!, mainLabel: "Сосредоточенным")
        let fourthItem = HomeCellModel(mainimage: UIImage(named: "Calm")!, mainLabel: "Взволнованным")
        let fifthItem = HomeCellModel(mainimage: UIImage(named: "Icon")!, mainLabel: "shmood")
        
        return [firstItem,secondItem,thirdItem,fourthItem,fifthItem]
    }

    
}

struct Constants {
    static let leftdistanceToView: CGFloat = 20
    static let rightdistanceToView: CGFloat = 20
    static let minimumLineSpacing: CGFloat = 10
    static let itemWidth = (UIScreen.main.bounds.width - Constants.leftdistanceToView - Constants.rightdistanceToView - (Constants.minimumLineSpacing / 2)) / 2
}
