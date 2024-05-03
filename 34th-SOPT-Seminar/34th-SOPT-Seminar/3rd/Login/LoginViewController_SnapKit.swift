//
//  LoginViewController_SnapKit.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import UIKit
import SnapKit
import Then

class LoginViewController_SnapKit: UIViewController {
   
   private let rootView = LoginView()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.view.backgroundColor = .white
      self.view = rootView
      print("viewDidLoad 실행됨")
   }
   
   func setAddTarget() {
      rootView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
      rootView.segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
   }
   
   
   func presentToWelcomeVC() {
      let welcomeViewController = WelcomeViewController_SnapKit_Then()
//      welcomeViewController.delegate = self
      welcomeViewController.id = rootView.idTextField.text
      welcomeViewController.modalPresentationStyle = .formSheet
      self.present(welcomeViewController, animated: true)
   }
   
   func pushToWelcomVC() {
      let welcomeViewController = WelcomeViewController_SnapKit_Then()
//      welcomeViewController.delegate = self
      self.navigationController?.pushViewController(welcomeViewController, animated: true)
   }
   
   @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
      if sender.selectedSegmentIndex == 0 {
         rootView.currentMode = "modal"
      } else {
         rootView.currentMode = "navigation"
      }
   }
   
   @objc func loginButtonDidTap() {
      if rootView.currentMode == "modal" {
         presentToWelcomeVC()
      } else {
         pushToWelcomVC()
      }
   }
   
   
   
   
}

