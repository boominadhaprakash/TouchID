//
//  TouchID.swift
//  TouchID
//
//  Created by Sonata on 17/04/19.
//  Copyright © 2019 Boomi. All rights reserved.
//

import Foundation
import UIKit
import LocalAuthentication

protocol TouchIDDelegate: class {
    func didAuthenticateSuccess()
    func didAuthenticate(with failure: String)
}

class TouchIDView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
//extension UIView: TouchIDDelegate {
//    weak var touchIDDelegate: TouchIDDelegate? {
//        set(newValue) {
//            touchIDDelegate = newValue
//        }
//    }
//
//}
