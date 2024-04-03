//
//  LoginViewController.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 3/30/24.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
   var width = UIScreen().bounds.width
   private lazy var titleLabel: UILabel = {
      let label = UILabel(frame: CGRect(x: 80, y: 161, width: 236, height: 44))
      label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
      label.textColor = .black
      label.textAlignment = .center
      label.numberOfLines = 2
      //       label.font = UIFont(name: "Pretendard-Bold", size: 18)
      return label
   }()
   
   private lazy var idTextField: UITextField = {
      let textField = UITextField(frame: CGRect(x: 28, y: 276, width: 335, height: 52))
      textField.placeholder = "아이디를 입력해주세요"
      //       textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
      textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
      return textField
   }()
   
   private lazy var passwordTextField: UITextField = {
      let textField = UITextField(frame: CGRect(x: 28, y: 335, width: 335, height: 52))
      textField.placeholder = "비밀번호를 입력해주세요"
      //       textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
      textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
      return textField
   }()
   
   private lazy var loginButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 422, width: 332, height: 58))
      button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
      button.setTitle("로그인하기", for: .normal)
      button.setTitleColor(.white, for: .normal)
      //       button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
             button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
      return button
   }()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.view.backgroundColor = .white
      [titleLabel, idTextField, passwordTextField, loginButton].forEach {
         self.view.addSubview($0)
      }
   }
   
   @objc func loginButtonDidTap() {
      presentToWelcomeVC()
//      pushToWelcomVC()
   }
   
   private func presentToWelcomeVC() {
      let welcomeViewController = WelcomViewController()
      
      welcomeViewController.id = idTextField.text
      welcomeViewController.modalPresentationStyle = .formSheet
      self.present(welcomeViewController, animated: true)
   }
   
   private func pushToWelcomVC() {
      let welcomeViewController = WelcomViewController()
      self.navigationController?.pushViewController(welcomeViewController, animated: true)
   }
   
   
}
