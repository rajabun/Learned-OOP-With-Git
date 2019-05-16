//
//  SecondViewController.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var profilePictureImage: UIImageView!
    @IBOutlet weak var mentorNameLabel: UILabel!
    @IBOutlet weak var mentorAgeLabel: UILabel!
    @IBOutlet weak var mentorHeightLabel: UILabel!
    @IBOutlet weak var mentorTaskLabel: UILabel!
    
    var mentorInstance: HomeworkModel?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mentorInstance = HomeworkModel(nameMentor: "Rajab", ageMentor: 24, heightMentor: 170, taskMentor: "Design")
        
        updateUI()
    }
    
    func updateUI()
    {
        if let instance = mentorInstance
        {
            mentorNameLabel.text = instance.name
            mentorAgeLabel.text = "Age : \(instance.age)"
            mentorHeightLabel.text = "Height : \(instance.height)"
            mentorTaskLabel.text = instance.task
        }
    }
    
    @IBAction func increaseAgeMentorButton(_ sender: UIButton)
    {
        if let instance = mentorInstance
        {
            instance.increaseAgeMentor()
        }
        
        updateUI()
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "backSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
