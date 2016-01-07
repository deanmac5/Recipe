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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
    }
}
