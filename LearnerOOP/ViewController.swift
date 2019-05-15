//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 15/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    @IBOutlet weak var learnerSnareLabel: UILabel!
    @IBOutlet weak var learnerWoodLabel: UILabel!
    @IBOutlet weak var learnerTuningLabel: UILabel!
    @IBOutlet weak var learnerBrandLabel: UILabel!
    
    //var learnerInstance: LearnerModel? //You just create a copy of your LearnerModel
    
    var learnerInstance: LearnerHandsOn? //You just create a copy of your LearnerHandsOn
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        learnerInstance = LearnerModel(nameLearner: "Rajab", ageLearner: 24, genderLearner: "Male", imageProfileLearner: "")
        */
        learnerInstance = LearnerHandsOn(snareType: "Nylon", woodType: "Mahogany", tuningType: "Standard", brandName: "Something")
        updateUI()
    }
    
    func updateUI() {
        /*
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = " \(instance.age)"
            learnerGenderLabel.text = instance.gender
         */
        
        if let instance = learnerInstance {
            learnerSnareLabel.text = instance.snare
            learnerWoodLabel.text = instance.wood
            learnerTuningLabel.text = instance.tuning
            learnerBrandLabel.text = instance.brand
            
        }
    
    }
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        /*
        if let instance = learnerInstance {
            instance.increaseAge()
         */
        if let instance = learnerInstance {
            instance.changeToSnare()
            updateUI()
        }
        
    }
    
    
    //tambah comment baru
}

