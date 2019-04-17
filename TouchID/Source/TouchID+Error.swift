//
//  TouchID+Error.swift
//  TouchID
//
//  Created by Boominadha Prakash on 17/04/19.
//  Copyright © 2019 Boomi. All rights reserved.
//

import Foundation

enum TouchIDError: Error, CustomStringConvertible {
    case deviceSupportError
    case unknownError
    var description: String {
        switch self {
        case .deviceSupportError:
            return "Device doesn't support Biometric access/Touch ID"
        case .unknownError:
            return "Unknown Error"
        }
    }
}
