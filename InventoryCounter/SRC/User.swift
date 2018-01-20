//
//  User.swift
//  InventoryCounter
//
//  Created by james luo on 1/19/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import Foundation
class User{
    var UserItems = [UserItem]()
    var UserName: String
    init(UserName: String) {
        self.UserName = UserName
    }
    func addItem(ItemName: String, WarningNumber: Int){
        UserItems.append(UserItem(ItemName: ItemName, WarningNumber: WarningNumber))
    }
}

