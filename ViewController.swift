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
        
        fbLoginButton.frame = CGRect(x: view.frame.size.width / 2 - view.frame.size.width / 4, y: view.frame.size.height / 4, width: view.frame.size.width / 2 , height: 30)
        
        fbLoginButton.permissions = ["public_profile,email"]
        
        view.addSubview(fbLoginButton)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        
        if error == nil
        {
            if result?.isCancelled == true
            {
                return
            }
        }
        
        let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
        
        Auth.auth().signIn(with: credential) { (result, error) in
            if let error = error
            {
                return
            }
        }
        
     }
     
     func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
         <#code#>
     }
     
}

