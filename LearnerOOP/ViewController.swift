//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 15/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //for class LearnerModel and LearnerHandsOn
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    //for class FacilitatorModel
    @IBOutlet weak var learnerSnareLabel: UILabel!
    @IBOutlet weak var learnerWoodLabel: UILabel!
    @IBOutlet weak var learnerTuningLabel: UILabel!
    @IBOutlet weak var learnerBrandLabel: UILabel!
    
    //? means optional type which is a type that can hold either a value or no value
    
    //To use properties and methods in LearnerModel Class :
    //Create a variable with Data Type = LearnerModel
    
    //Properties (We can write anything): Data Type (Class)
    var learnerInstance: LearnerModel? //You just create a copy of your LearnerModel
    
    var learnerHandsOnInstance: LearnerHandsOn? //You just create a copy of your LearnerHandsOn
    
    var facilitatorInstance: FacilitatorModel? //You just create a copy of your FacilitatorModel
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //initiation for class LearnerModel
        learnerInstance = LearnerModel(nameLearner: "Rajab", ageLearner: 24, genderLearner: "Male", imageProfileLearner: "")
        
        //initiation for class LearnerHandsOn
        learnerHandsOnInstance = LearnerHandsOn(snareType: "Nylon", woodType: "Mahogany", tuningType: "Standard", brandName: "Something")
        
        //initiation for class LearnerModel
        facilitatorInstance = FacilitatorModel(facilName: "Petrucci", facilAge: 47, facilGender: "Male", facilImageProfile: "", facilPerk: "Unlimited Starbuck on Friday")
        
        //update ui after initiation
        updateUI()
    }
    
    //function for connect ui to instance
    func updateUI()
    {
        //The Conditional Unwrapping with “if let” allows us to unwrap optional values safely only when there is a value, and if not, the code block will not run.
        
        //connect label in uikit to properties in class LearnerModel
        if let instance = learnerInstance
        {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
        
        //connect label in uikit to properties in class LearnerHandsOn
        if let instance = learnerHandsOnInstance
        {
            learnerSnareLabel.text = instance.snare
            learnerWoodLabel.text = instance.wood
            learnerTuningLabel.text = instance.tuning
            learnerBrandLabel.text = instance.brand
        }
        
        //connect label in uikit to properties in class FacilitatorModel
        if let instance = facilitatorInstance
        {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
    }
    
    //function for plus button
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton)
    {
        //call method in class LearnerModel
        if let instance = learnerInstance
        {
            instance.increaseAge()
        }
        
        //call method in class LearnerHandsOn
        if let instance = learnerHandsOnInstance
        {
            instance.changeToSnare()
         
        }
        
        //call method in class FacilitatorModel and it's superclass
        if let instance = facilitatorInstance
        {
            instance.increaseAge()
            instance.coachMentee()
        }
        
        //update ui after button clicked
        updateUI()
    
    
    //tambah comment baru
    }
    
    //Go to the next page with Segue Function
    @IBAction func nextPageButton(_ sender: UIButton) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    

}
