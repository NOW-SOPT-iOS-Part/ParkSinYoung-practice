//
//  ++UIView.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/5/24.
//

import Foundation
import UIKit

extension UIView {
   func addSubviews(_ views: UIView...) {
      views.forEach {
         self.addSubview($0)
      }
   }
}
