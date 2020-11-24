//
//  MenuTableViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import UIKit

class MenuTableViewController: UITableViewController {
    let menuController = MenuController()
    var menuItems = [MenuItem]() 
    var category: String!
}

extension MenuTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = category.capitalized
        menuController.fetchMenuItems(forCategory: category) { (menuItems) in
            if let menuItems = menuItems {
                self.updateUI(with: menuItems)
            }
            
        }
    }
}

extension MenuTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension MenuTableViewController {
    func updateUI(with menuItems: [MenuItem]) {
        DispatchQueue.main.async {
            self.menuItems = menuItems
            self.tableView.reloadData()
        }
    }
}
