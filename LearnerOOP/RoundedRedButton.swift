//
//  RoundedRedButton.swift
//  LearnerOOP
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class RoundedRedButton: UIButton {

    override func awakeFromNib()
    {
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }

}
