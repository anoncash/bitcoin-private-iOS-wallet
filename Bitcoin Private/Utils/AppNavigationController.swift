//
//  AppNavigationController.swift
//  BlockEQ
//
//  Created by Satraj Bambra on 2018-03-10.
//  Copyright © 2018 Satraj Bambra. All rights reserved.
//

import UIKit

protocol AccountCreationDelegate: class {
    func createAccount(mnemonic: String)
}

class AppNavigationController: UINavigationController {
    weak var accountCreationDelegate: AccountCreationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    func setupView() {
        navigationBar.isTranslucent = false
        navigationBar.tintColor = Colors.primaryDark
        navigationBar.barTintColor = Colors.white
        navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor : Colors.primaryDark
        ]
        
        navigationBar.backgroundColor = Colors.white

    }
    
    func image(fromLayer layer: CALayer) -> UIImage {
        UIGraphicsBeginImageContext(layer.frame.size)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let outputImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return outputImage!
    }
}
