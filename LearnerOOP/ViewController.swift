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
    
    var learnerInstance: LearnerModel? //You just create a copy of your LearnerModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        learnerInstance = LearnerModel(nameLearner: "Rajab", ageLearner: 24, genderLearner: "Male", imageProfileLearner: "")
        updateUI()
    }
    
    func updateUI() {
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = " \(instance.age)"
            learnerGenderLabel.text = instance.gender
            
        }
    
    }
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
            updateUI()
        }
        
    }
    
    
    //tambah comment baru
}

