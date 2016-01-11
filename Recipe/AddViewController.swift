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
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        
        addButton.enabled = false
        
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textTitleDidChange", name: UITextFieldTextDidChangeNotification, object: nil)
         NSNotificationCenter.defaultCenter().addObserver(self, selector: "recipeContentDidChange", name: UITextFieldTextDidChangeNotification, object: nil)
    }
    
    
    
    @IBAction func doneButton_clicked(sender: AnyObject) {
        recipeContent.resignFirstResponder()
        
    }
    
    
    
    @IBAction func titleDoneButton_click(sender: AnyObject) {
        titleText.resignFirstResponder()
        
    }
    
    func handleButtonStates(){
        if(recipeContent.text != ""){
            doneButton.enabled = true
        }
        else{
            doneButton.enabled = false
        }
        
        if(titleText.text != "" && recipeContent.text != ""){
            
            addButton.enabled = true
            addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else{
            addButton.enabled = false
            addButton.setTitleColor(UIColor.lightGrayColor(), forState: UIControlState.Normal)
        }
    }
    
    func textTitleDidChange(){
        handleButtonStates()
    }
    
    func recipeContentDidChange(){
        handleButtonStates()
    }
    
    
    @IBAction func addButton_click(sender: AnyObject) {
        RecipeManager.addRecipe(titleText.text!, content: recipeContent.text)
        
        titleText.text = ""
        recipeContent.text = ""
        
    }
    
    
    
}
