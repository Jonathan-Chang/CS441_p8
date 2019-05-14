//
//  MenuOption.swift
//  p8_final
//
//  Created by Jonathan on 5/14/19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible{
    
    case Map
    case Review
 
    var description: String{
        switch self{
            
        case .Map:
            return "Map"
        case .Review:
            return "Review"
        }
    }
    
    var image: UIImage{
        switch self{
            
        case .Map:
            return UIImage(named: "location-icon") ?? UIImage()
        case .Review:
            return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        }
    }
    
}
