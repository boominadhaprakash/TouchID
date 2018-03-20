//
//  ViewController.swift
//  TouchID
//
//  Created by Boominadha Prakash on 12/04/17.
//  Copyright © 2017 Boomi. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var enableaccessbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enableaccessact(_ sender: Any) {
        
        let auth = LAContext()
        var error:NSError?
        
        if auth.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        {
            //Authentication Success
            print("Auth success")
            auth.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Touch ID", reply: {(success,error)in
                if success{
                    print("success")
                }else{
                    print("No Touch ID")
                    
                }
            })
        }
        else
        {
            let alertController = UIAlertController(title: "Error!", message: "Device doesn't support Biometric access/Touch ID", preferredStyle: .alert)
            let okAct = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAct)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }

}

