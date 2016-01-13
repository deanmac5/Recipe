//
//  Recipe.swift
//  Recipe
//
//  Created by Dean on 11/01/2016.
//  Copyright © 2016 Dean. All rights reserved.
//

import UIKit

class Recipe: NSObject, NSCoding {
    var title: String?
    var content: String?
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
    override init(){
        super.init()
    }
    
    required init(coder aDecoder: NSCoder){
        if let titleDecoded = aDecoder.decodeObjectForKey("title"){
            title = titleDecoded as? String
        }
        
        if let contentDecoded = aDecoder.decodeObjectForKey("content"){
            content = contentDecoded as? String
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let titleEncoded = title {
            aCoder.encodeObject(titleEncoded, forKey: "title")
        }
        
        if let contentEncoded = content {
            aCoder.encodeObject(contentEncoded, forKey: "content")
        }
    }
    
    
    
    
}
