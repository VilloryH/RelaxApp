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
    var description:String
    
    static func fetchBottomCells() -> [BottomCellModel] {
        let firstCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomFirst")!, button: UIButton(), description: "Полное описание на множество строчек")
        let secondCell = BottomCellModel(title: "Заголовок блока1", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let thirdCell = BottomCellModel(title: "Заголовок блока2", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fouthCell = BottomCellModel(title: "Заголовок блока3", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fifthCell = BottomCellModel(title: "Заголовок блока4", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let sixtyCell = BottomCellModel(title: "Заголовок блока5", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        
        return [firstCell, secondCell, thirdCell, fouthCell, fifthCell, sixtyCell]
    }
    static func fetchBottomCellsFirst() -> [BottomCellModel] {
        let firstCell = BottomCellModel(title: "Второй массив", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomFirst")!, button: UIButton(), description: "Полное описание на множество строчек")
        let secondCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let thirdCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fouthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fifthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let sixtyCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        
        return [firstCell, secondCell, thirdCell, fouthCell, fifthCell, sixtyCell]
    }
    static func fetchBottomCellsSecond() -> [BottomCellModel] {
        let firstCell = BottomCellModel(title: "Третий", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomFirst")!, button: UIButton(), description: "Полное описание на множество строчек")
        let secondCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let thirdCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fouthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fifthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let sixtyCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        
        return [firstCell, secondCell, thirdCell, fouthCell, fifthCell, sixtyCell]
    }
    static func fetchBottomCellsThird() -> [BottomCellModel] {
        let firstCell = BottomCellModel(title: "Четвертый", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomFirst")!, button: UIButton(), description: "Полное описание на множество строчек")
        let secondCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let thirdCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fouthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let fifthCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        let sixtyCell = BottomCellModel(title: "Заголовок блока", subtitle: "Кратенькое описание блока с двумя строчками", image: UIImage(named: "bottomSecond")!, button: UIButton(), description: "Полное описание на множество строчек")
        
        return [firstCell, secondCell, thirdCell, fouthCell, fifthCell, sixtyCell]
    }
   
    
}
