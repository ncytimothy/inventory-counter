//
//  ViewController.swift
//  InventoryCounter
//
//  Created by Timothy Ng on 1/19/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    // MARK: Properties
    var currentUser: User? = nil
    var hardcodedFood = ["Bananas", "Oranges"]

    
    // MARK: TableView Delegate Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count: Int = 0
        
        if let currentUser = currentUser, let userItems = currentUser.UserItems {
            count = userItems.count
        }
        
        return count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as! FoodTableViewCell
        if let currentUser = currentUser, let userItems = currentUser.UserItems {
            for userItem in userItems {
                cell.foodLabel.text = userItem.ItemName
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailVC") as! FoodDetailViewController
        
        detailVC.foodName = hardcodedFood[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    // MARK: Action
    @IBAction func addPressed(_ sender: Any) {
        let addInventoryVC = storyboard?.instantiateViewController(withIdentifier: "addInventoryVC") as! Shop
        present(addInventoryVC, animated: true, completion: nil)
    }
    


}

