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
        
        addToOrderButton.layer.cornerRadius = 5.0
        updateUI()
    }
}

extension MenuItemDetailViewController {
    @IBAction func orderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
}

extension MenuItemDetailViewController {
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLable.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
    }
}
