//
//  SocialItem.swift
//  Zooming Icons
//
//  Created by Alex on 2015-11-26.
//  Copyright © 2015 Alex. All rights reserved.
//

import UIKit

class SocialItem: NSObject {
    
    var name: String
    var summary: String
    
    var colour: UIColor
    var image: UIImage
    
    init(image: UIImage, color: UIColor, name: String, summary: String) {
        self.name = name
        self.summary = summary
        self.colour = color
        self.image = image
    }

}
