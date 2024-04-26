//
//  ItemModel.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import Foundation
import UIKit

import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.logo, name: "류희재", price: "22000원", heartIsSelected: false)
        ]
    }
}

