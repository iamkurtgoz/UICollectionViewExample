//
//  NewCollectionViewCell.swift
//  CollectionViewExample
//
//  Created by Mehmet Kurtgöz on 24.11.2020.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageHeader: UIImageView!
    
    @IBOutlet weak var labelCaption: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 10
    }

}
