//
//  CustomCollectionViewCell.swift
//  CollectionViewExample
//
//  Created by Mehmet Kurtgöz on 21.11.2020.
//

import UIKit

@IBDesignable
class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewFront: UIView!
    @IBOutlet weak var imageHeader: UIImageView!
    @IBOutlet weak var labelCaption: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.viewFront.layer.cornerRadius = 10.0
        self.viewFront.layer.masksToBounds = true
    }

    
}
