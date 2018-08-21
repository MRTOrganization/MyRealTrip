//
//  LoginViewController.swift
//  MyRealTrip
//
//  Created by H on 2018. 8. 3..
//  Copyright © 2018년 sanghyuk. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLoginButton.layer.cornerRadius = 2
        emailLoginButton.layer.masksToBounds = true
        
        signUpButton.layer.cornerRadius = 2
        signUpButton.layer.borderWidth = 0.5
        signUpButton.layer.masksToBounds = true
        
        
        
        
        let loginButton = FBSDKLoginButton()
        
        loginButton.readPermissions = ["public_profile","email","user_friends"]
        
        print(FBSDKAccessToken.currentAccessTokenIsActive())
        let facebookView = FBSDKProfilePictureView.init(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        view.addSubview(facebookView)
    }

    @IBAction func loginTestButton(_ sender: FBSDKLoginButton) {
//        print(FBSDKAccessToken.current().tokenString)
    }
    
//    @IBAction func didTapEmailLoginButton(_ sender: UIButton) {
//        
//        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "EmailLoginViewController") else { return }
//        
//        self.navigationController?.pushViewController(uvc, animated: true)
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}


