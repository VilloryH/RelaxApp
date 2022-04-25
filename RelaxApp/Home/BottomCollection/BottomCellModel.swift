//
//  BottomCellModel.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 20.04.22.
//

import Foundation
import UIKit

struct BottomCellModel {
    var title:String
    var subtitle:String
    var image:UIImage
    var button:UIButton
    
    static func fetchBottomCells() -> [BottomCellModel] {
        let firstCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomFirst")!, button: UIButton())
        let secondCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton())
        let thirdCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton())
        let fouthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton())
        let fifthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton())
        let sixtyCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton())
        
        return [firstCell, secondCell, thirdCell, fouthCell, fifthCell, sixtyCell]
    }
    
}
