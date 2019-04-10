//
//  MaVue.swift
//  Apple ou Pas
//
//  Created by Sascha Sallès on 27/03/2019.
//  Copyright © 2019 Sascha Sallès. All rights reserved.
//

import UIKit

class MaVue: UIView {
    
    var masque = UIView()
    var imageView: UIImageView?
    var reponse = Reponse.peutEtre
    var logo: Logo? {
        didSet{
            guard let l = logo else { return }
            reponse = .peutEtre
            setMasqueCouleur(reponse)
            if imageView == nil {
                imageView = UIImageView(frame: bounds)
                imageView?.contentMode = .scaleAspectFit
                addSubview(imageView ?? UIImageView())
                sendSubviewToBack(imageView ?? UIImageView())
            }
            imageView?.image = l.image
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func ajoutMasque() {
        masque = UIView(frame: bounds)
        masque.backgroundColor = .init(red:0.88, green:0.87, blue:0.73, alpha:0.1)
        masque.layer.cornerRadius = 18
        masque.alpha = 0.25
        addSubview(masque)
    }
    func setup() {
        setLayer()
        isUserInteractionEnabled = true
        ajoutMasque()
    }
    
    func setMasqueCouleur(_ reponse: Reponse) {
        switch reponse {
        case .oui:
            masque.backgroundColor = .green
        case .non: masque.backgroundColor = .red
        case .peutEtre: masque.backgroundColor = .clear
        }
        self.reponse = reponse
        
    }
    
    
}
