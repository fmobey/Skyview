//
//  File.swift
//  
//
//  Created by Furkan OGUZ on 6.09.2023.
//

import UIKit

public extension UIView {
    
    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]?, cornerRadius: CGFloat, size: CGRect) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = size
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        gradient.cornerRadius = cornerRadius
        self.layer.insertSublayer(gradient, at: 0)
        
        return gradient
    }
}

public extension UIColor {
    static var primary: UIColor {
        return UIColor(red: 1, green: 1, blue: 1, alpha: 1) ?? UIColor()
    }
}
