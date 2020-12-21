//
//  MenuItem.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import Foundation

struct MenuItem: Codable, Hashable {
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case category
        case imageURL = "image_url"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(category)
    }
    
    static func == (lhs: MenuItem, rhs: MenuItem) -> Bool {
        lhs.category == rhs.category
    }
}

struct MenuItems: Codable {
    let items: [MenuItem]
}
