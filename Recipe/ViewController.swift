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
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "breads"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell") as! customcell
        
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        cell.textLabel?.textColor = UIColor.whiteColor() 
        cell.textLabel?.text = array[indexPath.item]
        cell.Recipe = cell.textLabel?.text
        return cell
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "detailview"){
            let cell = sender as! customcell
            let detailView = segue.destinationViewController as! DetailedViewController
            detailView.preRecipe = cell.Recipe
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.alpha = 0.5
    }


}

