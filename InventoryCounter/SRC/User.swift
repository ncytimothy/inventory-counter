//
//  User.swift
//  InventoryCounter
//
//  Created by james luo on 1/19/18.
//  Copyright © 2018 Timothy Ng. All rights reserved.
//

import Foundation
struct User {
    var UserItems: [UserItem]?
    var UserName: String
    
    init(dictionary: [String:AnyObject]) {
        UserItems = dictionary["userItems"] as! [UserItem]
        UserName = dictionary["username"] as! String
    }
    
}

