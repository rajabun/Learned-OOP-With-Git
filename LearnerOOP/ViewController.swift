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

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    @IBOutlet weak var learnerSnareLabel: UILabel!
    @IBOutlet weak var learnerWoodLabel: UILabel!
    @IBOutlet weak var learnerTuningLabel: UILabel!
    @IBOutlet weak var learnerBrandLabel: UILabel!
    
    var learnerInstance: LearnerModel? //You just create a copy of your LearnerModel
    
    var learnerHandsOnInstance: LearnerHandsOn? //You just create a copy of your LearnerHandsOn
    
    var facilitatorInstance: FacilitatorModel? //You just create a copy of your FacilitatorModel
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        learnerInstance = LearnerModel(nameLearner: "Rajab", ageLearner: 24, genderLearner: "Male", imageProfileLearner: "")
        learnerHandsOnInstance = LearnerHandsOn(snareType: "Nylon", woodType: "Mahogany", tuningType: "Standard", brandName: "Something")
        facilitatorInstance = FacilitatorModel(facilName: "Petrucci", facilAge: 47, facilGender: "Male", facilImageProfile: "", facilPerk: "Unlimited Starbuck on Friday")
        updateUI()
    }
    
    func updateUI()
    {
        /*
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = " \(instance.age)"
            learnerGenderLabel.text = instance.gender
         */
        
        if let instance = learnerHandsOnInstance
        {
            learnerSnareLabel.text = instance.snare
            learnerWoodLabel.text = instance.wood
            learnerTuningLabel.text = instance.tuning
            learnerBrandLabel.text = instance.brand
            
        }
        
        if let instance = facilitatorInstance
        {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = " \(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
    
    }
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton)
    {
        
        if let instance = learnerInstance
        {
            instance.increaseAge()
        }
        if let instance = learnerHandsOnInstance
        {
            instance.changeToSnare()
         
        }
 
        if let instance = facilitatorInstance
            {
            instance.increaseAge()
            instance.coachMentee()
            }
        updateUI()
    
    
    //tambah comment baru
    }

}
