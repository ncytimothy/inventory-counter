//
//  List.swift
//  InventoryCounter
//
//  Created by james luo on 1/20/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import UIKit
var currentIndex = 0
class List: UIViewController {

    @IBOutlet weak var Food: UILabel!
    @IBOutlet weak var AddFood: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        CurUser.addItem(ItemName: "Beef", WarningNumber: 2)
//        Food.text = CurUser.UserItems![0].ItemName
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeView(_ sender: UIButton) {
        currentIndex = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
