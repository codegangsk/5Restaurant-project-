//
//  IntermediaryModels.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/20.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
