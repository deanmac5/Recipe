//
//  RecipeManager.swift
//  Recipe
//
//  Created by Dean on 11/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class RecipeManager: NSObject {
    static var recipes = [Recipe]()
    
    class func addRecipe(title:String, content:String){
        let r = Recipe(title: title, content: content)
        recipes.append(r)
    }
    
    class func DeleteRecipe(id: Int){
        recipes.removeAtIndex(id)
    }
    
    class func GetRecipe(id: Int) -> Recipe {
        if(recipes.count > 0 ){
            return recipes[id]
        }
        
        return Recipe()
    }
}
