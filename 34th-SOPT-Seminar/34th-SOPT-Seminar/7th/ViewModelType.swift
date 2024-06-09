//
//  ViewModelType.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 6/9/24.
//

import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(from input: Input, disposeBag: RxSwift.DisposeBag) -> Output
}
