//
//  OrderTableViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/19.
//

import UIKit

class OrderTableViewController: UITableViewController {
    var order = Order()
}

extension OrderTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OrderTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  order.menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCellIdentifier", for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }
}

extension OrderTableViewController {
    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let menuItem = order.menuItems[indexPath.row]
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = String(format: "$%.2f", menuItem.price)
    }
}
