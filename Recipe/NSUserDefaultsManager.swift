//
//  NSUserDefaultsManager.swift
//  Recipe
//
//  Created by Dean on 13/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class NSUserDefaultsManager: NSObject {
    static let userDefaults = NSUserDefaults.standardUserDefaults()
    
    class func synchronize(){
        let myData = NSKeyedArchiver.archivedDataWithRootObject(RecipeManager.recipes)
        NSUserDefaults.standardUserDefaults().setObject(myData, forKey: "recipeArray")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    
     class func initializeDefaults(){
        if let recipesRaw = NSUserDefaults.standardUserDefaults().dataForKey("recipeArray")    {
            if let recipes = NSKeyedUnarchiver.unarchiveObjectWithData(recipesRaw) as? [Recipe]{
                RecipeManager.recipes = recipes
            }
        }
    }
    
}
