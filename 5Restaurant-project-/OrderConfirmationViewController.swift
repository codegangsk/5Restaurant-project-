//
//  OrderConfirmationViewController.swift
//  5Restaurant-project-
//
//  Created by Sophie Kim on 2020/11/27.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    @IBOutlet var timeRemainingLabel: UILabel!
    var minutes: Int!
}

extension OrderConfirmationViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
    }
}


