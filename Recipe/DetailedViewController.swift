//
//  DetailedViewController.swift
//  Recipe
//
//  Created by Dean on 7/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    var preRecipe:String?

    @IBOutlet var recipeContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
    }
    
    override func viewDidAppear(animated: Bool) {
        self.title = preRecipe
    }
}
