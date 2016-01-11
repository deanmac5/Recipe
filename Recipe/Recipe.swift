//
//  Recipe.swift
//  Recipe
//
//  Created by Dean on 11/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class Recipe: NSObject {
    var title: String
    var content: String
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}
