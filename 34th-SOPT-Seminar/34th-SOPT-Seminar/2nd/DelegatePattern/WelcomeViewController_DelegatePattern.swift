//
//  WelcomeViewController_DelegatePattern.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/6/24.
//

import UIKit
import SnapKit
import Then

protocol DataBindProtocol: AnyObject {
    func dataBind(id: String?)
}

class WelcomeViewController_DelegatePattern: UIViewController {
   
   weak var delegate: DataBindProtocol?
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
      uILabel.font = UIFont.pretendard(size: 25, weight: .heavy)
      return uILabel
   }()
   
   private lazy var backToMainButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 426, width: 335, height: 58))
      button.backgroundColor = UIColor(resource: .primaryOrange)
      button.setTitle("메인으로", for: .normal)
      button.setTitleColor(.white, for: .normal)
      button.titleLabel?.font = UIFont.pretendard(size: 18, weight: .bold)
      button.layer.cornerRadius = 6
      return button
   }()
   
   private lazy var retryLoginButton: UIButton = {
      let button = UIButton(frame: CGRect(x: 28, y: 498, width: 335, height: 58))
      button.backgroundColor = UIColor(resource: .gray200)
      button.setTitle("다시 로그인", for: .normal)
      button.setTitleColor(.gray, for: .normal)
      button.titleLabel?.font = UIFont.pretendard(size: 18, weight: .bold)
      button.layer.cornerRadius = 6
      button.addTarget(self, action: #selector(retryLoginButtonDidTap), for: .touchUpInside)
      return button
   }()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.backgroundColor = .white
      bindID()
      setLayout()
   }
   
   private func bindID() {
      if let text = id {
         self.titleLabel.text = "\(text)님 \n반가워요!"
      } else {
         print("id 값이 nil 입니다.")
      }
   }
   
   private func setLayout() {
      view.addSubviews(logoImageView, titleLabel, backToMainButton, retryLoginButton)
   }
   
   @objc func retryLoginButtonDidTap() {
      if let id = id {
         delegate?.dataBind(id: id)
      }
      if self.navigationController == nil {
         self.dismiss(animated: true)
      } else {
         self.navigationController?.popViewController(animated: true)
      }
   }
}
