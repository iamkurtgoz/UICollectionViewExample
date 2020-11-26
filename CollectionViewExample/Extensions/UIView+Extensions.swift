//
//  UIView+Extensions.swift
//  ScrollViewStackView
//
//  Created by Mehmet Kurtgöz on 15.11.2020.
//

import Foundation
import UIKit

@IBDesignable
class BaseView: UIView {
    
    @IBInspectable var shadowColor: UIColor = UIColor.white {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat = 0.0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var corner: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = corner
        }
    }
        
    @IBInspectable var rippleEffect: Bool = false
    
    
    override func layoutSubviews() {
        if rippleEffect {
            addRippleEffect(to: self)
        }
    }
    
    func addRippleEffect(to referenceView: UIView) {
            
    }
}
