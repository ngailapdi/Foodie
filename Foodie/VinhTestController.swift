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
        upload()
    }
    
    func upload() {
        // Get a reference to the storage service, using the default Firebase App
        let storage = FIRStorage.storage()
        
        // Create a storage reference from our storage service
        let storageRef = storage.referenceForURL("gs://vnbuzz-foodie.appspot.com")
        
        let imagesRef = storageRef.child("mountains.jpg")
    }
}

