//
//  VinhTestController.swift
//  Foodie
//
//  Created by Vinh Tran on 9/24/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import UIKit
import MapKit
import Firebase

class VinhTestController: UIViewController {
    
    var rootRef: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        rootRef = FIRDatabase.database().reference()
        let conditionRef = rootRef.child("food")
        conditionRef.setValue("Testing");
    }
}

