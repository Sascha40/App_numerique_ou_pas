//
//  logo.swift
//  Apple ou Pas
//
//  Created by Sascha Sallès on 27/03/2019.
//  Copyright © 2019 Sascha Sallès. All rights reserved.
//

import UIKit

class Logo{
    private var _appleImages: [UIImage?] = [ UIImage(named: "apple 1"), UIImage(named: "apple 2"),UIImage(named: "asus"), UIImage(named: "yp"), UIImage(named: "Ibm"), UIImage(named: "android"), UIImage(named: "windows"), UIImage(named: "javascript"), UIImage(named: "google")]
    
    private var _autreImages: [UIImage?] = [ UIImage(named: "johnny"), UIImage(named: "coca"), UIImage(named: "ricard"), UIImage(named: "piquart"), UIImage(named: "nike"), UIImage(named: "warner"), UIImage(named: "nasa"), UIImage(named: "vw"), UIImage(named: "starbucks") ]
    
    private var _image: UIImage?
    private var _isApple: Bool
    
    
    var image: UIImage?{
        return _image
    }

    var isApple: Bool{
        return _isApple
    }
    init(bool: Bool){
        _isApple = bool
        let random = Int.random(in: 0...8)
        _image = _isApple ? _appleImages[random] : _autreImages[random]
    }
}
