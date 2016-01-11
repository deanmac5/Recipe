//
//  AddViewController.swift
//  Recipe
//
//  Created by Dean on 7/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var recipeContent: UITextView!
    @IBOutlet var titleText: UITextField!
    @IBOutlet var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
    }
    
    
    
    @IBAction func doneButton_clicked(sender: AnyObject) {
        recipeContent.resignFirstResponder()
        
    }
    
    
    
    @IBAction func titleDoneButton_click(sender: AnyObject) {
        titleText.resignFirstResponder()
        
    }
    
}
