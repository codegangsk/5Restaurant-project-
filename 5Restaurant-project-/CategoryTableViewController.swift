//
//  CategoryTableViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import UIKit

enum Section: Int , CaseIterable {
    case first
}

class CategoryTableViewController: UITableViewController {
    var categories = [String]()

    private lazy var dataSource = makeDataSource()
    typealias DataSource = UITableViewDiffableDataSource<Section, CategoryRequested>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, CategoryRequested>
}

extension CategoryTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: MenuController.menuDataUpdatedNotification, object: nil) 
        applySnapshot(animatingDifferences: false)
    }
}

extension CategoryTableViewController {
   func makeDataSource() -> DataSource {
        let dataSource = DataSource(tableView: tableView) { (tableView, indexPath, CategoryRequested) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath) as? CategoryTableViewCell
            cell?.configure(with: CategoryRequested)
            return cell
        }
        return dataSource
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
        snapshot.appendSections(Section.allCases)
        snapshot.appendItems(CategoryRequested.categoryList)
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}

 extension CategoryTableViewController  {
    @objc func updateUI() {
        categories = MenuController.shared.categories
        self.tableView.reloadData()
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
