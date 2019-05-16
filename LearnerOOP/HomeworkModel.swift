//
//  HomeworkModel.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import Foundation

class HomeworkModel
{
    //properties or attributes or instance variables
    var name: String
    var age: Int
    var height: Int
    var task: String
    
    //initializer
    init(nameMentor: String, ageMentor: Int, heightMentor: Int, taskMentor: String)
    {
        self.name = nameMentor
        self.age = ageMentor
        self.height = heightMentor
        self.task = taskMentor
        //self mirip kayak .this di java
    }
    
    //method
    func increaseAgeMentor()
    {
        self.age += 1
    }
}
