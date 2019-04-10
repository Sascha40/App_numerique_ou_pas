//
//  MonLabel.swift
//  Apple ou Pas
//
//  Created by Sascha Sallès on 27/03/2019.
//  Copyright © 2019 Sascha Sallès. All rights reserved.
//

import UIKit

class MonLabel: UILabel {

    private var _font: UIFont = UIFont.systemFont(ofSize: 20)
    private var _color: UIColor = UIColor.white
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
        }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        }

    func setup() {
        textColor = _color
        numberOfLines = 0
        textAlignment = NSTextAlignment.center
        adjustsFontSizeToFitWidth = true
        font = _font
        updateText(nil, nil)
    }
    
    
    func updateText(_ tempsRestant: Int?, _ score: Int?) {
        let texte = "Est-ce un logo de l'industrie numérique?"
        if tempsRestant == nil && score == nil {
            text = texte
        } else {
            let attributes = NSMutableAttributedString(
                string: texte + "\n",
                attributes: [
                    NSAttributedString.Key.foregroundColor: _color,
                    NSAttributedString.Key.font: _font
                    ])
            attributes.append(NSAttributedString(
                string: "Temps restant: \(tempsRestant!) - Score: \(score!)",
                attributes: [
                    .foregroundColor: UIColor.purple,
                    .font: UIFont.boldSystemFont(ofSize: 24)
            ]))
            attributedText = attributes
        }
    }
    
    
}





