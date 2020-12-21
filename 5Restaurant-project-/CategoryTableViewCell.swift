//
//  CategoryTableViewCell.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/12/20.
//

import UIKit

 class CategoryTableViewCell: UITableViewCell {
    func configure(with category: CategoryRequested) {
        self.textLabel?.text = "\(category.category)"
}
}
