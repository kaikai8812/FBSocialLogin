//
//  ViewController.swift
//  FBSocialLogin
//
//  Created by ヘパリン類似物質 on 2022/02/06.
//
import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  ログインボタン関連
//        let loginButton = FBLoginButton()
//        loginButton.center = view.center
//        view.addSubview(loginButton)
        
        //  アクセストークン関連
//        if let token = AccessToken.current, !token.isExpired {
//            print("取得できたトークン：\(token)")
//        }
        
        setupFBLoginButton()
    }
    
    func setupFBLoginButton() {
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func loginButtonTapped() {
        let loginManager = LoginManager()
        loginManager.logIn(permissions: ["public_profile"], from: self) { result, error in
                    if let error = error {
                        print("Encountered Erorr: \(error)")
                    } else if let result = result, result.isCancelled {
                        print("Cancelled")
                    } else {
                        print("Logged In")
                    }
                }
    }
}

