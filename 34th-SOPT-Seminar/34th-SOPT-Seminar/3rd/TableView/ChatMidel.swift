//
//  ChatMidel.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import Foundation
import UIKit

struct ChatModel {
    let profileImg: UIImage
    let name: String
    let place: String
    let message: String
    let itemImg: UIImage
}

extension ChatModel {
   
    static func dummy() -> [ChatModel] {
       var image = UIImage(systemName: "person")
        return [
         
         ChatModel(profileImg: UIImage.logo, name: "류희재", place: "성북구", message: "땡큐", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "윤희슬", place: "여의도", message: "안녕", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "김가현", place: "잠실", message: "아요", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "김선우", place: "회기", message: "너무 좋아요", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "김나연", place: "미국", message: "뿅", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "김민서", place: "중국", message: "뿡", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "김수연", place: "일본", message: "자기야 미안해 했자나", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "한지석", place: "태국", message: "솝트 이딴거 안했어", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "한정원", place: "명왕성", message: "진짜?", itemImg: image ?? UIImage()),
            ChatModel(profileImg: UIImage.logo, name: "이지훈", place: "안드로메다", message: "난이서~", itemImg: image ?? UIImage()),
         ChatModel(profileImg: UIImage.logo, name: "박민서", place: "good", message: "난이서~", itemImg: image ?? UIImage()),
         ChatModel(profileImg: UIImage.logo, name: "박신영", place: "good", message: "난이서~", itemImg: image ?? UIImage())
        ]
    }
}
