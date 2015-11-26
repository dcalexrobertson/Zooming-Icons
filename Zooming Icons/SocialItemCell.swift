//
//  SocialItemCell.swift
//  Zooming Icons
//
//  Created by Alex on 2015-11-26.
//  Copyright © 2015 Alex. All rights reserved.
//

import UIKit

class SocialItemCell: UICollectionViewCell {
    
    @IBOutlet weak var coloredView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        coloredView.layer.cornerRadius = bounds.width/2
        coloredView.layer.masksToBounds = true
    }
    
    func configureCell(item: SocialItem) {
        
        coloredView.backgroundColor = item.colour
        imageView.image = item.image
    }
    
}
