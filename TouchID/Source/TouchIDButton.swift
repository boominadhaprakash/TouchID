//
//  TouchIDButton.swift
//  TouchID
//
//  Created by Boominadha Prakash on 17/04/19.
//  Copyright © 2019 Boomi. All rights reserved.
//

import Foundation
import UIKit
import LocalAuthentication

class TouchIDButton: UIButton {
    
    weak var delegate: TouchIDDelegate?
    var localizedReason = "Touch ID"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addTarget(self, action: #selector(didTapTouchIDBtn(sender:)), for: .touchUpInside)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addTarget(self, action: #selector(didTapTouchIDBtn(sender:)), for: .touchUpInside)
    }
    @objc private func didTapTouchIDBtn(sender: UIButton) {
        let auth = LAContext()        
        var error: NSError?
        
        if auth.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            auth.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: localizedReason) { [weak self] (success, error) in
                if success {
                    self?.delegate?.didAuthenticateSuccess()
                }else {
                    self?.delegate?.didAuthenticateError(with: error ?? TouchIDError.unknownError)
                }
            }
        }else {
            self.delegate?.didAuthenticateError(with: TouchIDError.deviceSupportError)
        }
    }
}
