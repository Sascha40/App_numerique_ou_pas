//
//  MonButton.swift
//  Apple ou Pas
//
//  Created by Sascha Sallès on 27/03/2019.
//  Copyright © 2019 Sascha Sallès. All rights reserved.
//

import UIKit

class MonButton: UIButton {

 
    func setup(string: String) {
        setLayer()
        setTitle(string, for: UIControl.State.normal)
        setTitleColor(UIColor.white, for: .normal)
    }
}
