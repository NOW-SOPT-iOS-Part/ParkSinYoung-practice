//
//  LoginViewController_DI.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 5/25/24.
//

import UIKit
import SnapKit


import UIKit

protocol LoginViewModelType {
    var isValid: ObservablePattern<Bool> { get }
    var errMessage: ObservablePattern<String> { get }
    
    func checkValid(id: String?, password: String?)
}

final class LoginViewModel_DI: LoginViewModelType {
    var isValid: ObservablePattern<Bool> = ObservablePattern<Bool>.init(false)
    var errMessage: ObservablePattern<String> = ObservablePattern<String>.init(nil)
    
    func checkValid(id: String?, password: String?) {
        guard let id else {
            errMessage.value = "아이디가 비어있습니다."
            return
        }
        guard let password else {
            errMessage.value = "비밀번호가 비어있습니다."
            return
        }
        
        let idRegEx = "[A-Za-z0-9]{5,13}"
        let pwRegEx = "[A-Za-z0-9!_@$%^&+=]{8,20}"
        
        guard let _ = id.range(of: idRegEx, options: .regularExpression) else {
            errMessage.value = "아이디가 유효하지 않습니다."
            return
        }
        
        guard let _ = password.range(of: pwRegEx, options: .regularExpression) else {
            errMessage.value = "비밀번호가 유효하지 않습니다."
            return
        }
        isValid.value = true
        
    }
}


import UIKit
import SnapKit

final class LoginViewController_DI: UIViewController {
    
    private let rootView = LoginView()
    private let viewModel: LoginViewModelType
    
    override func loadView() {
        self.view = rootView
    }
    
    init(viewModel: LoginViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setTarget()
        bindViewModel()
    }
    
    private func setTarget() {
        rootView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }
    
    private func bindViewModel() {
        viewModel.isValid.bind { [weak self] isValid in
            guard let isValid else { return }
            if isValid { self?.pushToWelcomeVC() }
        }
        
        viewModel.errMessage.bind { [weak self] err in
            guard let err else { return }
            self?.showToast(err)
        }
    }
    
    
    @objc private func loginButtonDidTap() {
        viewModel.checkValid(
            id: rootView.idTextField.text,
            password: rootView.passwordTextField.text
        )
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    func showToast(_ message: String,
                   bottomInset: CGFloat = 86
    ) {
        guard let view else { return }
        Toast().show(message: message,
                     view: view,
                     bottomInset: bottomInset
        )
    }
}



