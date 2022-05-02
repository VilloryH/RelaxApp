//
//  TracksModel.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 2.05.22.
//

import Foundation
import UIKit

struct TracksModel {
    var nameLabel: String
    var trackName: String
    var trackAlbum:UIImage
    
    static func fetchTracks() -> [TracksModel] {
        let firstTrack = TracksModel(nameLabel: "Nice Sleep", trackName: "track1", trackAlbum: UIImage(named: "firstItem")!)
        let secondTrack = TracksModel(nameLabel: "Just Relax", trackName: "track2", trackAlbum:  UIImage(named:"secondItem")!)
        let thirdTrack = TracksModel(nameLabel: "Meditation", trackName: "track3", trackAlbum: UIImage(named:"thirdItem")!)
        let fourthTrack = TracksModel(nameLabel: "Keep Calm", trackName: "track4", trackAlbum:  UIImage(named:"fourthItem")!)
        return [firstTrack,secondTrack,thirdTrack,fourthTrack]
    }
}
