//
//  IphoneModel.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import Foundation

struct IphoneModel: Codable, Identifiable {
    var id = UUID()
    let iphoneImage: String
    let iphoneName: String
    let releaseDate: String
    let variantColors: [String]
    
    enum CodingKeys: String, CodingKey {
        case iphoneImage, iphoneName, releaseDate, variantColors
       }
}

