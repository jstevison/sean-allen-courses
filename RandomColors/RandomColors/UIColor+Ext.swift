//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Jeffrey Stevison on 4/20/20.
//  Copyright © 2020 Jeffrey Stevison. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
