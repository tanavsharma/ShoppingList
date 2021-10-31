//
//  ViewController.swift
//  ShoppingList
//
//  Created by Tanav Sharma on 2021-10-30.
//

import UIKit

class ViewController: UIViewController {
    
    var stepperOneVar = ""
    var stepperTwoVar = ""
    var stepperThreeVar = ""
    var stepperFourVar = ""
    var stepperFiveVar = ""
    
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
    @IBOutlet weak var stepperOne: UIStepper!
    @IBOutlet weak var stepperTwo: UIStepper!
    @IBOutlet weak var stepperThree: UIStepper!
    @IBOutlet weak var stepperFour: UIStepper!
    @IBOutlet weak var stepperFive: UIStepper!
    
    
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
        stepperOneVar = String(Int(sender.value))
        lblOne.text = stepperOneVar
    }
    
    
    @IBAction func stepperTwo(_ sender: UIStepper) {
        stepperTwoVar = String(Int(sender.value))
        lblTwo.text = stepperTwoVar
        
    }
    
    
    @IBAction func stepperThree(_ sender: UIStepper) {
        stepperThreeVar = String(Int(sender.value))
        lblThree.text = stepperThreeVar
        
    }
    
    @IBAction func stepperFour(_ sender: UIStepper) {
        stepperFourVar = String(Int(sender.value))
        lblFour.text = stepperFourVar
        
    }
    
    
    @IBAction func stepperFive(_ sender: UIStepper) {
        stepperFiveVar = String(Int(sender.value))
        lblFive.text = stepperFiveVar
        
    }
    
    //Save Button - Functionality Comming Soon
    @IBAction func saveList(_ sender: Any) {
        
        /* Probably save the items in a dictionary
         *
         */
        
        
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
            
            self.mainListTitle.text = ""
            
            self.stepperOne.value = 1
            self.stepperTwo.value = 1
            self.stepperThree.value = 1
            self.stepperFour.value = 1
            self.stepperFive.value = 1
            
            
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

