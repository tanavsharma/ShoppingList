//
//  ViewController.swift
//  ShoppingList
//
//  Created by Tanav Sharma on 2021-10-30.
//

import UIKit

class ViewController: UIViewController {
    
    var stepperOne = ""
    var stepperTwo = ""
    var stepperThree = ""
    var stepperFour = ""
    var stepperFive = ""
    
    //List Items
    @IBOutlet weak var mainListTitle: UITextField!
    @IBOutlet weak var listItemOne: UITextField!
    @IBOutlet weak var listItemTwo: UITextField!
    @IBOutlet weak var listItemThree: UITextField!
    @IBOutlet weak var listItemFour: UITextField!
    @IBOutlet weak var listItemFive: UITextField!
    
    //Label Items
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var lblThree: UILabel!
    @IBOutlet weak var lblFour: UILabel!
    @IBOutlet weak var lblFive: UILabel!
    
    //Stepper Items
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting All Labels To 1
        lblOne.text = "1"
        lblTwo.text = "1"
        lblThree.text = "1"
        lblFour.text = "1"
        lblFive.text = "1"
    }

    
    @IBAction func stepperOne(_ sender: UIStepper) {
        stepperOne = String(Int(sender.value))
        lblOne.text = stepperOne
    }
    
    
    @IBAction func stepperTwo(_ sender: UIStepper) {
        stepperTwo = String(Int(sender.value))
        lblTwo.text = stepperTwo
        
    }
    
    
    @IBAction func stepperThree(_ sender: UIStepper) {
        stepperThree = String(Int(sender.value))
        lblThree.text = stepperThree
        
    }
    
    @IBAction func stepperFour(_ sender: UIStepper) {
        stepperFour = String(Int(sender.value))
        lblFour.text = stepperFour
        
    }
    
    
    @IBAction func stepperFive(_ sender: UIStepper) {
        stepperFive = String(Int(sender.value))
        lblFive.text = stepperFive
        
    }
    
    
    
    
    
    //Save Button - Functionality Comming Soon
    @IBAction func saveList(_ sender: Any) {
    }
    
    /* Clear Screen - clears all inputs from users
     * and resets the screen back to default
     */
    @IBAction func clearScreen(_ sender: Any) {
        
        let alert = UIAlertController(title: "Are You Sure?", message: "This Action will clear your screen. Are you sure you want to continue?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
                                        action in
            self.lblOne.text = "1"
            self.lblTwo.text = "1"
            self.lblThree.text = "1"
            self.lblFour.text = "1"
            self.lblFive.text = "1"
            
            self.stepperOne = ""
            self.stepperTwo = ""
            self.stepperThree = ""
            self.stepperFour = ""
            self.stepperFive = ""
            
            self.listItemOne.text = ""
            self.listItemTwo.text = ""
            self.listItemThree.text = ""
            self.listItemFour.text = ""
            self.listItemFive.text = ""
            
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        self.present(alert, animated: true)
        

    }
    
    
}

