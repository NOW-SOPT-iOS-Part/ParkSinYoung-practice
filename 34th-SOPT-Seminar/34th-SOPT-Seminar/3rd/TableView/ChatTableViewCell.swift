//
//  ChatTableViewCell.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import UIKit
import SnapKit
import Then

class ChatTableViewCell: UITableViewCell {
   
   static let identifier = "ChatTableViewCell"
   
   let profileImageView = UIImageView().then {
      $0.image = UIImage(systemName: "person.fill")
   }
   
   let container = UIView()
   
   let nameLabel = UILabel().then {
      $0.textColor = .black
      $0.textAlignment = .center
      $0.font = UIFont(name: "Pretendard-Bold", size: 15)
   }
   
   let placeLabel = UILabel().then {
      $0.textColor = .black
      $0.textAlignment = .left
      $0.font = UIFont(name: "Pretendard-Bold", size: 12)
   }
   
   let chatLabel = UILabel().then {
      $0.textColor = .black
      $0.textAlignment = .left
      $0.font = UIFont(name: "Pretendard-Bold", size: 14)
   }
   
   let itemImageView = UIImageView()
   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      setLayout()
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   func setLayout() {
      addSubviews(profileImageView, container, itemImageView)
      container.addSubviews(nameLabel, placeLabel, chatLabel)
      
      profileImageView.snp.makeConstraints {
         $0.leading.top.bottom.equalToSuperview().inset(16)
         $0.trailing.equalToSuperview().offset(-318)
//         $0.width.height.equalTo(40)
      }
      
      container.snp.makeConstraints {
         $0.top.bottom.equalToSuperview().inset(16)
         $0.leading.equalTo(profileImageView.snp.trailing).offset(16)
         $0.trailing.equalTo(itemImageView.snp.leading).offset(-16)
      }
      
      nameLabel.snp.makeConstraints {
         $0.top.leading.equalToSuperview()
      }
      
      placeLabel.snp.makeConstraints {
         $0.leading.equalTo(nameLabel.snp.trailing).offset(4)
         $0.centerY.equalTo(nameLabel)
      }
      
      chatLabel.snp.makeConstraints {
         $0.top.equalTo(nameLabel.snp.bottom).offset(4)
         $0.leading.equalToSuperview()
      }
      
      itemImageView.snp.makeConstraints {
         $0.trailing.top.bottom.equalToSuperview().inset(16)
         $0.width.height.equalTo(40)
      }
   }
   
   
}

extension ChatTableViewCell {
    func dataBind(_ chatData: ChatModel) {
        profileImageView.image = chatData.profileImg
        nameLabel.text = chatData.name
        placeLabel.text = chatData.place
        chatLabel.text = chatData.message
        itemImageView.image = chatData.itemImg
    }
}
