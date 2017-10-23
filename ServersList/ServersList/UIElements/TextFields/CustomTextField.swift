//
//  Custom.swift
//  ServersList
//
//  Created by Tomas Stasiulionis on 22/10/2017.
//  Copyright © 2017 Tomas Stasiulionis. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    let corner_radius : CGFloat =  5.0
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.frame.size.height = 50.0
        
        self.layer.cornerRadius = corner_radius
        self.clipsToBounds = true
    }
    
    func addPlaceholder(placeholder: String){
        self.placeholder = placeholder
    }
    
    /**
     * Adding icon for this textfield.
     * @parames: icon - UIImage
     * @return: void
     */
    func addIcon(icon: UIImage){
        self.leftViewMode = UITextFieldViewMode.always
        
        let leftImageIvew = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 15))
        
        leftImageIvew.image = icon
        leftImageIvew.contentMode = UIViewContentMode.scaleAspectFit
        
        self.leftView = leftImageIvew
    }

}
