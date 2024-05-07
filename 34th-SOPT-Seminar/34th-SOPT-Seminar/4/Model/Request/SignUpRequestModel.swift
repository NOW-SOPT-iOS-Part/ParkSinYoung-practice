//
//  SignUpRequestModel.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/27/24.
//

import Foundation

struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
