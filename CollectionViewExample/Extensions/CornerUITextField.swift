//
//  CornerUITextField.swift
//  ScrollViewStackView
//
//  Created by Mehmet Kurtgöz on 15.11.2020.
//

import Foundation
import UIKit

@IBDesignable
class CornerUITextField: UITextField {
        
    @IBInspectable var corner: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = corner
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var setBorderColor: UIColor! {
        didSet {
            layer.borderColor = setBorderColor.cgColor
        }
    }
    
    @IBInspectable var isMaskToBounds: Bool = false {
        didSet {
            layer.masksToBounds = isMaskToBounds
        }
    }
    
    @IBInspectable var paddingLeft: CGFloat = 0
    @IBInspectable var paddingRight: CGFloat = 0

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + paddingLeft, y: bounds.origin.y, width: bounds.size.width - paddingLeft - paddingRight, height: bounds.size.height)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
