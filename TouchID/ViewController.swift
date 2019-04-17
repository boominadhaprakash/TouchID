//
//  ViewController.swift
//  TouchID
//
//  Created by Boominadha Prakash on 12/04/17.
//  Copyright © 2017 Boomi. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController, TouchIDDelegate {
    
    //MARK: - iVars
    lazy var enableAccessBtn: TouchIDButton = {
        let btn = TouchIDButton()
        btn.localizedReason = "Test Authentication"
        btn.setTitle("Click for Touch ID Authentication", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.sizeToFit()
        btn.center = self.view.center
        return btn
    }()
    
    //MARK: - Overridden functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(enableAccessBtn)
        enableAccessBtn.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didAuthenticateSuccess() {
        debugPrint("Authentication Success")
    }
    
    func didAuthenticateError(with error: Error) {
        debugPrint("Authentication Error: \(error)")
    }
}

