//
//  LearnerModel.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 15/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//  Tutorial : https://learnappmaking.com/object-oriented-programming-oop-swift-introduction/
// https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

import Foundation

class LearnerModel
{
    //properties or attributes or instance variables
    var name: String
    var age: Int
    var gender: String
    var imageProfile: String //karena sudah pakai tipe data primitif sebelumnya, untuk standarisasi
    
    //initializer
    init(nameLearner: String, ageLearner: Int, genderLearner: String, imageProfileLearner: String)
    {
        self.name = nameLearner
        self.age = ageLearner
        self.gender = genderLearner
        self.imageProfile = imageProfileLearner
        //self mirip kayak .this di java
    }
    
    //method
    func increaseAge()
    {
        self.age += 1
    }
}
