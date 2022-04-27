//
//  File.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 27.04.22.
//

import Foundation
import UIKit

enum Horoscope: String, CaseIterable {
    case aquarius = "https://ohmanda.com/api/horoscope/aquarius"
    case pisces = "https://ohmanda.com/api/horoscope/pisces"
    case aries = "https://ohmanda.com/api/horoscope/aries"
    case taurus = "https://ohmanda.com/api/horoscope/taurus"
    case gemini  = "https://ohmanda.com/api/horoscope/gemini"
    case cancer  =  "https://ohmanda.com/api/horoscope/cancer"
    case leo =  "https://ohmanda.com/api/horoscope/leo"
    case virgo = "https://ohmanda.com/api/horoscope/virgo"
    case libra = "https://ohmanda.com/api/horoscope/libra"
    case scorpio = "https://ohmanda.com/api/horoscope/scorpio"
    case sagittarius = "https://ohmanda.com/api/horoscope/sagittarius"
    case capricorn = "https://ohmanda.com/api/horoscope/capricorn"
}

struct ProfileData {
    var profileName: String
    var profileImage: UIImage
    var age: Int
    var weight: Int
    var bloodPressure: String
    var horoscope: String
}

class ProfileClass {
    static let profileShared = ProfileClass()
    
    var profileData = ProfileData(profileName: "KoalaMen", profileImage: UIImage(named: "ProfilePic")!, age: 24, weight: 69, bloodPressure: "120/140", horoscope: "libra")
    
    
}
