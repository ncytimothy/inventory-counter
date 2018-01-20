//
//  User.swift
//  InventoryCounter
//
//  Created by james luo on 1/19/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import Foundation
import Firebase
class User{
    var UserItems = [UserItem]()
    var UserName: String
    
    init(UserName: String) {
        self.UserName = UserName
        //var ref:DatabaseReference
        Database.setLoggingEnabled(true)
        var ref = Database.database().reference()
        ref.child("UserData").child("TestUser").observeSingleEvent(of: .value, with: {snapShot in
            // Get user value
            let value = snapShot.value as? NSDictionary
            
            //print(value?["UserName"] as? String ?? "")
            self.UserName = value?["UserName"] as? String ?? ""
    })
    }
    
    func addItem(ItemName: String, WarningNumber: Int){
        UserItems.append(UserItem(ItemName: ItemName, WarningNumber: WarningNumber))
    }
}

