//
//  MenuItemDetailViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/24.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLable: UILabel!
    @IBOutlet var detailTextLabel: UILabel!
    @IBOutlet var addToOrderButton: UIButton!
    
    var menuItem: MenuItem!
}

extension MenuItemDetailViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
}

extension MenuItemDetailViewController {
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLable.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
    }
}
