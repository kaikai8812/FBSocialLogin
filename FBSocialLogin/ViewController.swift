//
//  ViewController.swift
//  FBSocialLogin
//
//  Created by ヘパリン類似物質 on 2022/02/06.
//


// Swift // // ファイルのヘッダーにこれを追加します。例: ViewController.swift import FBSDKLoginKit // 本文クラスViewControllerにこれを追加します:UIViewController { override func viewDidLoad() { super.viewDidLoad() let loginButton = FBLoginButton() loginButton.center = view.center view.addSubview(loginButton) } }


import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        // Do any additional setup after loading the view.
    }


}

