//
//  TouchID+Protocol.swift
//  TouchID
//
//  Created by Boominadha Prakash on 17/04/19.
//  Copyright © 2019 Boomi. All rights reserved.
//

import Foundation

protocol TouchIDDelegate: class {
    func didAuthenticateSuccess()
    func didAuthenticateError(with error: Error)
}
