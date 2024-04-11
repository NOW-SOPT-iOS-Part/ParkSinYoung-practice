//
//  LoginViewController_DelegatePattern.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/6/24.
//

import UIKit
import SnapKit
import Then

class LoginViewController_DelegatePattern: UIViewController {
   
   var currentMode = "modal"
   
   private lazy var titleLabel: UILabel = {
      let label = UILabel(frame: CGRect(x: 80, y: 161, width: 236, height: 44))
      label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
      label.font = UIFont.pretendard(size: 18, weight: .bold)
      label.textColor = .black
      label.textAlignment = .center
      label.numberOfLines = 2
      return label
   }()
   
   private lazy var idTextField: UITextField = {
      let textField = UITextField(frame: CGRect(x: 28, y: 276, width: 335, height: 52))
      textField.placeholder = "아이디"
      textField.font = UIFont.pretendard(size: 14, weight: .semibold)
      textField.layer.cornerRadius = 3
      textField.backgroundColor = UIColor(resource: .gray200)
      textField.clearButtonMode = .always
      textField.autocapitalizationType = .none
      textField.addPadding(left: 23)
      return textField
   }()
   
   private lazy var passwordTextField: UITextField = {
      let textField = UITextField(frame: CGRect(x: 28, y: 335, width: 335, height: 52))
      textField.placeholder = "비밀번호"
      textField.font = UIFont.pretendard(size: 14, weight: .semibold)
      textField.layer.cornerRadius = 3
      textField.backgroundColor = UIColor(resource: .gray200)
      textField.isSecureTextEntry = true
      textField.clearButtonMode = .always
      textField.autocapitalizationType = .none
      textField.addPadding(left: 23)
      return textField
   }()
   
   private lazy var loginButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 422, width: 332, height: 58))
      button.backgroundColor = UIColor(resource: .primaryOrange)
      button.setTitle("로그인하기", for: .normal)
      button.setTitleColor(.white, for: .normal)
      button.titleLabel?.font = UIFont.pretendard(size: 18, weight: .bold)
      button.layer.cornerRadius = 6
      button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
      return button
   }()
   
   private lazy var segmentedControl: UISegmentedControl = {
      let segmentedControl = UISegmentedControl(items: ["모달", "네비게이션"])
      segmentedControl.frame = CGRect(x: 28, y: 500, width: 200, height: 50)
      segmentedControl.selectedSegmentIndex = 0
      segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
      
      segmentedControl.setTitleTextAttributes([
         .foregroundColor: UIColor.black,
         .font: UIFont.pretendard(size: 16, weight: .bold)
      ], for: .selected)
      
      segmentedControl.setTitleTextAttributes([
         .foregroundColor: UIColor.white,
         .font: UIFont.pretendard(size: 16, weight: .black)
      ], for: .normal)
      
      return segmentedControl
   }()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view.backgroundColor = .white
      setLayout()
   }
   
   private func presentToWelcomeVC() {
      let welcomeViewController = WelcomeViewController_DelegatePattern()
      welcomeViewController.delegate = self
      welcomeViewController.id = idTextField.text
      welcomeViewController.modalPresentationStyle = .formSheet
      self.present(welcomeViewController, animated: true)
   }
   
   private func pushToWelcomVC() {
      let welcomeViewController = WelcomeViewController_DelegatePattern()
      welcomeViewController.delegate = self
      self.navigationController?.pushViewController(welcomeViewController, animated: true)
   }
   
   private func setLayout() {
      view.addSubviews(titleLabel, idTextField, passwordTextField, loginButton, segmentedControl)
   }
   
   @objc func loginButtonDidTap() {
      if currentMode == "modal" {
         presentToWelcomeVC()
      } else {
         pushToWelcomVC()
      }
   }
   
   @objc private func segmentedControlValueChanged(_ sender: UISegmentedControl) {
      if sender.selectedSegmentIndex == 0 {
         currentMode = "modal"
      } else {
         currentMode = "navigation"
      }
   }
}

extension LoginViewController_DelegatePattern: DataBindProtocol {
   func dataBind(id: String?) {
      guard let id = id else {return}
      idTextField.text = "\(id)에서 어떤걸로 할꺼얌?"
   }
}
