//
//  ViewController.swift
//  Foodie
//
//  Created by Khoa Ho on 9/24/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate {
    
    var array = [DataFood]()
    var speciesSearchResults:Array<DataFood>?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: - Tableview Delegate & Datasource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food")!
        cell.textLabel?.text = array[indexPath.row].Title
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array.append(DataFood(Title: "Bun Bo"))
        array.append(DataFood(Title: "Pho"))
        array.append(DataFood(Title: "Com"))
    }
    
    
    
    
    
}

