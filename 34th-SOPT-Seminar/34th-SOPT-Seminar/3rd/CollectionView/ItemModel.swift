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
         ItemModel(itemImg: UIImage.rectangleItem4, name: "아이폰 13프로맥스", price: "1,000,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem1, name: "에어팟 프로", price: "300,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem5, name: "커피머신", price: "100,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem3, name: "샌드위치", price: "8,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem2, name: "명품 향수", price: "250,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem5, name: "커피머신", price: "100,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem1, name: "차이팟 프로", price: "30,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem4, name: "차이폰 13프로맥스", price: "100,000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage.rectangleItem2, name: "짝퉁 향수", price: "100,000원", heartIsSelected: false)
        ]
    }
}

