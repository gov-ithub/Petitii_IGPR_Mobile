//
//  PoliceButton.swift
//  PolitiaRomanaPetitii
//
//  Created by Cristian Ilea on 12/18/16.
//  Copyright © 2016 GovITHub. All rights reserved.
//

import UIKit

// @IBDesignable /* xcode is still shit and can't render basic stuff */
class PoliceButton: UIButton {
    
    var backgroundImage:UIImage = UIImage(named:"bg-pattern")! {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override func draw(_ rect: CGRect) {
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "DINPro-Regular", size: 16)

        // fill vertically
        var j:CGFloat = 0.0
        while (j * backgroundImage.size.height) < self.bounds.size.height {
            // fill horizontally
            var i:CGFloat = 0.0
            while (i * backgroundImage.size.width) < self.bounds.size.width {
                backgroundImage.draw(in: CGRect(x: i * backgroundImage.size.width,
                                                y: j * backgroundImage.size.height,
                                                width: backgroundImage.size.width,
                                                height: backgroundImage.size.height))
                i += 1.0
            }
            j += 1.0
        }
    }
}
