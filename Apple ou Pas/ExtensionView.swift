//
//  ExtensionView.swift
//  Apple ou Pas
//
//  Created by Sascha Sallès on 27/03/2019.
//  Copyright © 2019 Sascha Sallès. All rights reserved.
//

import UIKit

extension UIView {
    func setLayer() {
        backgroundColor = .init(red:0.88, green:0.87, blue:0.73, alpha:0.2)
        layer.cornerRadius = 18
        // layer.borderColor = UIColor(red:0, green:0, blue:0,alpha: 0.4).cgColor
        // layer.borderWidth = 3
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.20
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 8, height: 8)
    }
}
