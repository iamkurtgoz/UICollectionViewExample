//
//  CornerUIImageView.swift
//  ScrollViewStackView
//
//  Created by Mehmet Kurtgöz on 14.11.2020.
//

import Foundation
import UIKit

@IBDesignable
class CornerUIImageView: UIImageView {
        
    @IBInspectable var corner: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = corner
        }
    }
    
    @IBInspectable var isClipsToBounds: Bool = false {
        didSet {
            clipsToBounds = true
        }
    }
    
}
