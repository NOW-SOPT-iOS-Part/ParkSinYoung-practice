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
        return [
         ChatModel(profileImg: UIImage.profile5, name: "요이키", place: "문정동", message: "확인했습니다.", itemImg: UIImage.item2),
            ChatModel(profileImg: UIImage.profile3, name: "chan", place: "구의동", message: "넵 수고하세용", itemImg: UIImage.item3),
            ChatModel(profileImg: UIImage.profile4, name: "오지", place: "보문동2가", message: "안녕하세요 답장이 너무 늦었네여 죄송합니다", itemImg: UIImage.item4),
            ChatModel(profileImg: UIImage.profile5, name: "누룽지", place: "면목동", message: "너무 좋아요", itemImg: UIImage.item5),
            ChatModel(profileImg: UIImage.profile5, name: "kenny", place: "자양제4동", message: "뿅", itemImg: UIImage.item6),
            ChatModel(profileImg: UIImage.profile1, name: "자리보금", place: "옥수동", message: "뿡", itemImg: UIImage.item7),
            ChatModel(profileImg: UIImage.profile6, name: "리빙스턴", place: "면목동", message: "자기야 미안해 했자나", itemImg: UIImage.item8),
            ChatModel(profileImg: UIImage.profile5, name: "꺄롱이", place: "중곡동", message: "솝트 이딴거 안했어", itemImg: UIImage.item9),
            ChatModel(profileImg: UIImage.profile5, name: "깨롱이", place: "중곡동", message: "진짜?", itemImg: UIImage.item10),
            ChatModel(profileImg: UIImage.profile2, name: "요우", place: "군자동", message: "난이서~", itemImg: UIImage.item2),
         ChatModel(profileImg: UIImage.profile5, name: "박신영", place: "중곡동", message: "난이서~", itemImg: UIImage.item1)
        ]
    }
}
