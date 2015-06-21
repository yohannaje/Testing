//
//  AppState.swift
//  Designspiration
//
//  Created by Yoh on 6/21/15.
//  Copyright (c) 2015 Harmony Bunny. All rights reserved.
//

import UIKit

class CategoriesTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tableView: UITableView!
    
    let types = [Categories(name: "Design"),Categories(name: "Travel"),Categories(name: "Life"),Categories(name: "Work"),Categories(name: "Fashion"),Categories(name: "Future"),Categories(name: "Dreams")]

     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.types.count
    }
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCellWithIdentifier("setting-cell", forIndexPath: indexPath) as! UITableViewCell
        var type: Categories
        type = types[indexPath.row]
        
        cell.textLabel?.text = type.name
        
        return cell
        
    }

   
}
















