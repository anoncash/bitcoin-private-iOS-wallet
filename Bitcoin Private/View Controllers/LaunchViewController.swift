//
//  LaunchViewController.swift
//  BlockEQ
//
//  Created by Satraj Bambra on 2018-03-09.
//  Copyright © 2018 Satraj Bambra. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var createWalletButton: UIButton!
    @IBOutlet var importWalletButton: UIButton!
    @IBOutlet var logoImageView: UIImageView!
    
    @IBAction func createNewWallet() {
        let mnemonicViewController = MnemonicViewController()
        let navigationController = AppNavigationController(rootViewController: mnemonicViewController)
        navigationController.accountCreationDelegate = self

        present(navigationController, animated: true, completion: nil)
    }
    
    @IBAction func importWallet() {
        let verificationViewController = VerificationViewController(type: .recovery, mnemonic: "")
        let navigationController = AppNavigationController(rootViewController: verificationViewController)
        navigationController.accountCreationDelegate = self
        
        present(navigationController, animated: true, completion: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(nibName: String(describing: LaunchViewController.self), bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        showButtons()
    }
    
    func setupView() {
        UIApplication.shared.statusBarStyle = .default
        
        navigationController?.isNavigationBarHidden = true
        
        logoImageView.image = UIImage(named: "icon")
        
        createWalletButton.backgroundColor = Colors.primaryDark
        createWalletButton.setTitleColor(Colors.white, for: .normal)
        importWalletButton.backgroundColor = Colors.secondaryDark
        importWalletButton.setTitleColor(Colors.white, for: .normal)
        view.backgroundColor = Colors.lightBackground
        //view.gradientLayer.colors = [Colors.primaryDark.cgColor, Colors.secondaryDark.cgColor]
        //view.gradientLayer.gradient = GradientPoint.topBottom.draw()
    }
    
    func hideButtons() {
        activityIndicator.startAnimating()
        createWalletButton.isHidden = true
        importWalletButton.isHidden = true
    }
    
    func showButtons() {
        activityIndicator.stopAnimating()
        createWalletButton.isHidden = false
        importWalletButton.isHidden = false
    }
    
    func displayWallet() {
        let walletViewController = WalletViewController()
        
        navigationController?.pushViewController(walletViewController, animated: true)
    }
}

extension LaunchViewController: AccountCreationDelegate {
    func createAccount(mnemonic: String) {
        hideButtons()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.displayWallet()
        }
    }
}
