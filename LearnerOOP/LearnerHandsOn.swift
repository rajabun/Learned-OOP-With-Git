//
//  LearnerHandsOn.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 15/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import Foundation

class LearnerHandsOn
{
    var snare: String
    let wood: String
    let tuning: String
    let brand: String
    
    init(snareType: String, woodType: String, tuningType: String, brandName: String)
    {
        self.snare = snareType
        self.wood = woodType
        self.tuning = tuningType
        self.brand = brandName
    }
    
    func changeToSnare()
    {
        self.snare = "Steel"
    }
    
}
