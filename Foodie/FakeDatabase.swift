//
//  FakeDatabase.swift
//  Foodie
//
//  Created by Ngài Lập Dị on 9/24/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import UIKit
class DataFood {
    var Title: String!
    var Description: String!
    var Price: String!
    var Deliver: Bool = false
    
    init(Title: String) {
        self.Title = Title
    }
}
