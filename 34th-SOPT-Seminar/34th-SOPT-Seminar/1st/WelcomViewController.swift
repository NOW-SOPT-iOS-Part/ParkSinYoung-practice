//
//  WelcomViewController.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 3/30/24.
//

import Foundation
import UIKit

class WelcomViewController: UIViewController {
   
   var id: String?
   
   private let logoImageView: UIImageView = {
           let imageView = UIImageView(frame: CGRect(x: 122, y: 87, width: 150, height: 150))
           imageView.image = UIImage(named: "Logo")
           return imageView
       }()
   
   private let titleLabel: UILabel = {
      let uILabel = UILabel(frame: CGRect(x: 150, y: 295, width: 95, height: 60))
      uILabel.text = "???님\n반가워요!"
      uILabel.textColor = .black
      uILabel.textAlignment = .center
      uILabel.numberOfLines = 2
      return uILabel
   }()
   
   private lazy var backToMainButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 426, width: 335, height: 58))
      button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
      button.setTitle("메인으로", for: .normal)
      button.setTitleColor(.white, for: .normal)
      return button
   }()
   
   private lazy var retryLoginButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 498, width: 335, height: 58))
      button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
      button.setTitle("다시 로그인", for: .normal)
      button.setTitleColor(.gray, for: .normal)
      button.addTarget(self, action: #selector(retryLoginButtonDidTap), for: .touchUpInside)
      return button
   }()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.backgroundColor = .white
      
      [logoImageView, titleLabel, backToMainButton, retryLoginButton].forEach {
         view.addSubview($0)
      }
      bindID()
      
   }
   
   @objc func retryLoginButtonDidTap() {
      if self.navigationController == nil {
         self.dismiss(animated: true)
      } else {
         self.navigationController?.popViewController(animated: true)
      }
   }
   
   private func bindID() {
//      guard let text = id else {return}
//      self.titleLabel.text = "\(text)님 \n반가워요!"
      if let text = id {
         self.titleLabel.text = "\(text)님 \n반가워요!"
      } else {
         print("id 값이 nil 입니다.")
      }
   }
}
