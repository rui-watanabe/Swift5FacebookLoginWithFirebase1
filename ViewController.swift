//
//  ViewController.swift
//  Swift5FacebookLoginWithFirebase1
//
//  Created by watar on 2020/07/12.
//  Copyright © 2020 rui watanabe. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FacebookCore
import FacebookLogin
import Firebase

class ViewController: UIViewController, LoginButtonDelegate {
    
    let fbLoginButton:FBLoginButton = FBLoginButton()
    var displayName = String()
    var pictureURL = String()
    var pictureURLString = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fbLoginButton.delegate = self
        
        
        
    }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
         <#code#>
     }
     
     func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
         <#code#>
     }
     
}

