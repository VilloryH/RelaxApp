//
//  ImagesModelCell.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 21.04.22.
//

import Foundation
import UIKit

struct ImagesModelCell {
    
    var image: UIImage
    var timeLabel:String
    
    static func fetchImagesCell() -> [ImagesModelCell] {
        
        let firstItem = ImagesModelCell(image: UIImage(named: "firstItem")!, timeLabel: "11:00")
        let secondItem = ImagesModelCell(image: UIImage(named: "secondItem")!, timeLabel: "19:55")
        let thirdItem = ImagesModelCell(image: UIImage(named: "thirdItem")!, timeLabel: "06:20")
        let fouthItem = ImagesModelCell(image: UIImage(named: "fourthItem")!, timeLabel: "14:41")
        let fifthItem = ImagesModelCell(image: UIImage(named: "fifthItem")!, timeLabel: "")
        
        return[firstItem, secondItem, thirdItem, fouthItem, fifthItem]
       
        
    }
}
