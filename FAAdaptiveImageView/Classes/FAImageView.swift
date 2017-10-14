//
//  FAImageView.swift
//  FAImageView
//
//  Created by Fahid Attique on 01/10/2017.
//  Copyright © 2017 Fahid Attique. All rights reserved.
//

import UIKit

@IBDesignable class FAImageView: UIImageView {
    
    @IBInspectable var root:String = "" {
        didSet {
            
            #if TARGET_INTERFACE_BUILDER
                image = UIImage(named: root, in: Bundle(for: type(of: self)), compatibleWith: UITraitCollection(userInterfaceIdiom: .phone))
            #else
                image = UIImage.image(withRoot: root)
            #endif
        }
    }
}







extension UIImage {
    
    class func image(withRoot root: String) -> UIImage? {
        return UIImage(named: imageName(withRoot: root))
    }

    class func imageName(withRoot root: String) -> String {
        
        let screenHeight = UIScreen.main.bounds.size.height
        if screenHeight == 568.0 { return root }
        else if screenHeight == 667.0 { return root + "-Oversize" }
        else if screenHeight == 736.0 { return root + "-Plus" }
        else { return root + "-X" }
    }
}
