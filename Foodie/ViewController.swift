//
//  ViewController.swift
//  Foodie
//
//  Created by Vinh Tran on 9/24/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import Firebase

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
   var array = [DataFood]()
    
    @IBOutlet var tableView: UITableView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food")!
        cell.textLabel?.text = array[indexPath.row].Title
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Helooooooooooo")
        array.append(DataFood(Title : "Bun Bo"))
        
    }
}

