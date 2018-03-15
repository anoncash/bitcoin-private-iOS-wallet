//
//  Constants.swift
//  BlockEQ
//
//  Created by Satraj Bambra on 2018-03-09.
//  Copyright © 2018 Satraj Bambra. All rights reserved.
//

import UIKit

struct Colors {
    static let primaryDark =  UIColor(red: 41.0/255.0, green: 45.0/255.0, blue: 95.0/255.0, alpha: Alphas.opaque)
    static let primaryDarkTransparent = UIColor(red: 41.0/255.0, green: 45.0/255.0, blue: 95.0/255.0, alpha: Alphas.transparent)
    static let secondaryDark =  UIColor(red: 126.0/255.0, green: 158.0/255.0, blue: 209.0/255.0, alpha: Alphas.opaque)
    static let secondaryDarkTransparent =  UIColor(red: 126.0/255.0, green: 158.0/255.0, blue: 209.0/255.0, alpha: Alphas.transparent)
    static let lightBackground = UIColor(red: 252.0/255.0, green: 252.0/255.0, blue: 252.0/255.0, alpha: Alphas.opaque)
    static let darkGray = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: Alphas.opaque)
    static let darkGrayTransparent = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: Alphas.opaqueTransparent)
    static let lightGray = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: Alphas.opaque)
    static let shadowGray = UIColor.lightGray
    static let black = UIColor.black
    static let blackTransparent = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: Alphas.semiTransparent)
    static let white = UIColor.white
    static let whiteTransparent = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: Alphas.transparent)
}

public struct Alphas {
    static let opaque = CGFloat(1)
    static let opaqueTransparent = CGFloat(0.7)
    static let semiTransparent = CGFloat(0.5)
    static let transparent = CGFloat(0.2)
}
