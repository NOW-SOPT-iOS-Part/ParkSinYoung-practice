//
//  LoginView.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import UIKit
import SnapKit
import Then

final class LoginView: UIView {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      setLayout()
   }
   
   @available(*, unavailable)
   required init?(coder: NSCoder) {
      fatalError("SecondView Error!")
   }
   
   var currentMode = "modal"
   
   lazy var titleLabel = UILabel().then {
      $0.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
      $0.font = UIFont.pretendard(size: 18, weight: .bold)
      $0.textColor = .black
      $0.textAlignment = .center
      $0.numberOfLines = 2
   }
   
   
   lazy var idTextField = UITextField().then {
      $0.placeholder = "아이디"
      $0.font = UIFont.pretendard(size: 14, weight: .semibold)
      $0.layer.cornerRadius = 3
      $0.backgroundColor = UIColor(resource: .gray200)
      $0.clearButtonMode = .always
      $0.autocapitalizationType = .none
      $0.addPadding(left: 23)
   }
   
   lazy var passwordTextField = UITextField().then {
      $0.placeholder = "비밀번호"
      $0.font = UIFont.pretendard(size: 14, weight: .semibold)
      $0.layer.cornerRadius = 3
      $0.backgroundColor = UIColor(resource: .gray200)
      $0.isSecureTextEntry = true
      $0.clearButtonMode = .always
      $0.autocapitalizationType = .none
      $0.addPadding(left: 23)
   }
   
   lazy var loginButton = UIButton().then {
      $0.backgroundColor = UIColor(resource: .primaryOrange)
      $0.setTitle("로그인하기", for: .normal)
      $0.setTitleColor(.white, for: .normal)
      $0.titleLabel?.font = UIFont.pretendard(size: 18, weight: .bold)
      $0.layer.cornerRadius = 6
   }
   
   lazy var segmentedControl: UISegmentedControl = {
      let segmentedControl = UISegmentedControl(items: ["모달", "네비게이션"])
//      segmentedControl.frame = CGRect(x: 28, y: 500, width: 200, height: 50)
      segmentedControl.selectedSegmentIndex = 0
      
      
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
   
   func setLayout() {
      addSubviews(titleLabel, idTextField, passwordTextField, loginButton, segmentedControl)
      
      titleLabel.snp.makeConstraints {
         $0.top.equalToSuperview().offset(161)
         $0.centerX.equalToSuperview()
      }
      
      idTextField.snp.makeConstraints {
         $0.top.equalTo(titleLabel.snp.bottom).offset(71)
         $0.leading.equalToSuperview().offset(20)
         $0.trailing.equalToSuperview().offset(-20)
         $0.height.equalTo(50)
      }
      
      passwordTextField.snp.makeConstraints {
         $0.top.equalTo(idTextField.snp.bottom).offset(7)
         $0.leading.trailing.height.equalTo(idTextField)
      }
      
      loginButton.snp.makeConstraints {
         $0.top.equalTo(passwordTextField.snp.bottom).offset(35)
         $0.leading.trailing.equalTo(idTextField)
         $0.height.equalTo(58)
      }
      
      segmentedControl.snp.makeConstraints {
         $0.top.equalTo(loginButton.snp.bottom).offset(35)
         $0.leading.trailing.equalTo(idTextField)
         $0.width.equalTo(100)
         $0.height.equalTo(50)
      }
   }
   
   
}
