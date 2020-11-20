//
//  Order.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/20.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
