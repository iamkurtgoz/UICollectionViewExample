//
//  UIButtonExtensions.swift
//  DrsMobile
//
//  Created by yusuf demirkoparan on 28.10.2019.
//  Copyright © 2019 yusuf demirkoparan. All rights reserved.
//

import UIKit

extension UIButton {
    static func setFramelessButton(title: String, generalColor: UIColor, radiues: CGFloat) -> UIButton {
        let btn = UIButton()
        btn.layer.borderColor = generalColor.cgColor
        btn.layer.borderWidth = 1
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(generalColor, for: .normal)
        btn.backgroundColor = .white
        //btn.titleLabel?.font = UIFont.setFontType(.regular, .normally)
        btn.layer.cornerRadius = radiues
        return btn
        
    }
    
}

@IBDesignable
class BaseButton: UIButton {
    var _corner: CGFloat = 5.0
    @IBInspectable var color: UIColor! {
        didSet {
            backgroundColor = color
        }
    }
    
    @IBInspectable var corner: CGFloat = 0.0 {
        didSet {
            _corner = corner
            layer.cornerRadius = corner
        }
    }
    
    @IBInspectable var textColor: UIColor! {
        didSet {
            setTitleColor(textColor, for: .normal)
        }
    }
    
    @IBInspectable var border: UIColor! {
        didSet {
            layer.borderColor = border.cgColor
        }
    }
    
    var borderSize: CGFloat! {
        didSet {
            layer.borderWidth = borderSize
        }
    }
    
    fileprivate let disableColor = UIColor.lightGray
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setEnable()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    fileprivate func setupUI() {
        layer.borderWidth = 1
        layer.cornerRadius = _corner
//        layer.shadowRadius = 1
//        layer.shadowOpacity = 1
//        layer.shadowOffset = CGSize.zero
        //self.titleLabel?.font = UIFont.setFontType(.regular, .normally)
    }
    
    func setupFramelessButtonsetFramelessButton(title: String, generalColor: UIColor, radiues: CGFloat) {
        layer.borderColor = generalColor.cgColor
        layer.borderWidth = 1
        setTitle(title, for: .normal)
        setTitleColor(generalColor, for: .normal)
        backgroundColor = .white
        //titleLabel?.font = UIFont.setFontType(.regular, .normally)
        layer.cornerRadius = radiues
        
    }
    
    func setDisable() {
        backgroundColor = disableColor
        setTitleColor(UIColor.white, for: .disabled)
        isUserInteractionEnabled = false
    }
    
    func setEnable() {
        backgroundColor = color
        setTitleColor(textColor, for: .normal)
        isUserInteractionEnabled = true
    }
}
