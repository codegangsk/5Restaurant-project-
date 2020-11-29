//
//  CategoryTableViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    var categories = [String]() 
}

extension CategoryTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: MenuController.menuDataUpdatedNotification, object: nil)
        
        updateUI()
    }
}

extension CategoryTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }
}

extension CategoryTableViewController  {
    @objc func updateUI() {
        categories = MenuController.shared.categories
        self.tableView.reloadData()
    }
    
    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let categoryString = categories[indexPath.row]
        cell.textLabel?.text = categoryString.capitalized
}
}

extension CategoryTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CategoriesToMenuSegue" {
            let menuTableViewController = segue.destination as! MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            menuTableViewController.category = categories[index]
        }
    }
}
