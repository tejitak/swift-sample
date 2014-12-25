//
//  LoginViewController.swift
//  test
//
//  Created by TEJIMA TAKUYA on 2014/12/24.
//  Copyright (c) 2014年 TEJIMA TAKUYA. All rights reserved.
//

import Foundation
import TwitterKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            // play with Twitter session
            if session != nil {
                println(session.userName)
                // ログイン成功したらクソ遷移する
                let timelineVC = TimelineViewController()
                UIApplication.sharedApplication().keyWindow?.rootViewController = timelineVC
            } else {
                println(error.localizedDescription)
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }
}