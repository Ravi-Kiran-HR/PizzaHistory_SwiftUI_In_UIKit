//
//  ViewController.swift
//  PizzaHistory
//
//  Created by Ravi Kiran HR on 4/20/22.
//  Copyright © 2022 Ravi Kiran HR. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBSegueAction func pizzaHistorySegue(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: HistoryView())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

