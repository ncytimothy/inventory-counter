//
//  FoodDetailViewController.swift
//  InventoryCounter
//
//  Created by Timothy Ng on 1/20/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
    
    var foodName: String!
    @IBOutlet weak var foodLabel: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       self.navigationItem.title = foodName
    }
    
}
