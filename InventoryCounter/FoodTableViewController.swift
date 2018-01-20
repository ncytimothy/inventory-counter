//
//  ViewController.swift
//  InventoryCounter
//
//  Created by Timothy Ng on 1/19/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var hardcodedFood = ["Bananas", "Oranges"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hardcodedFood.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as! FoodTableViewCell
        cell.foodLabel.text = hardcodedFood[(indexPath as NSIndexPath).row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailVC") as! FoodDetailViewController
        
        detailVC.foodName = hardcodedFood[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

