//
//  ViewController.swift
//  Recipe
//
//  Created by Dean on 6/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let array = ["item1","item2","item3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell")! as UITableViewCell
        
        cell.textLabel?.text = array[indexPath.item]
        return cell
    
    }


}

