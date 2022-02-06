//
//  ViewController.swift
//  FBSocialLogin
//
//  Created by ヘパリン類似物質 on 2022/02/06.
//
import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  ログインボタン関連
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        //  アクセストークン関連
        if let token = AccessToken.current, !token.isExpired {
            print("取得できたトークン：\(token)")
        }
    }
}

