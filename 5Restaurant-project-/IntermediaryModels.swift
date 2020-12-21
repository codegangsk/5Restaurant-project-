//
//  IntermediaryModels.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/20.
//

import Foundation

struct CategoryRequested : Hashable {
    var id = UUID()
    var category: String
    
    init(category: String) {
        self.category = category
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: CategoryRequested, rhs: CategoryRequested) -> Bool {
        lhs.id == rhs.id
    }
    
    static var categoryList: [CategoryRequested] = [
        CategoryRequested(category: MenuController.shared.categories[0]),
        CategoryRequested(category: MenuController.shared.categories[1]),
        CategoryRequested(category: MenuController.shared.categories[2]),
        CategoryRequested(category: MenuController.shared.categories[3])
    ]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
