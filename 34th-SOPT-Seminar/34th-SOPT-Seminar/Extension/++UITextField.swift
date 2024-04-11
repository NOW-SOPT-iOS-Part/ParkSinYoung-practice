//
//  ++UITextField.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/3/24.
//

import Foundation
import UIKit

extension UITextField {
   
   /// 텍스트필드 안쪽에 패딩 추가
   /// - Parameter left: 왼쪽에 추가할 패딩 너비
   /// - Parameter right: 오른쪽에 추가할 패딩 너비
   func addPadding(left: CGFloat? = nil, right: CGFloat? = nil) {
      if let left {
         leftView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
         leftViewMode = .always
      }
      if let right {
         rightView = UIView(frame: CGRect(x: 0, y: 0, width: right, height: 0))
         rightViewMode = .always
      }
   }
}
