//
//  AuthViewController.swift
//  IChat
//
//  Created by Eugene Kiselev on 01.05.2021.
//

import UIKit

class AuthViewController: UIViewController {
    private let logoImage = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleToFill)
    
    private let googleLabel = UILabel(text: "Get started with")
    private let emailLabel = UILabel(text: "Or sign up with")
    private let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    private let emailButton = UIButton(title: "Email",
                                       backgroundColor: .buttonDark(),
                                       titleColor: .white,
                                       font: .avenir20(),
                                       isShadow: false,
                                       cornerRadius: 4)
    private let loginButton = UIButton(title: "Login",
                                       backgroundColor: .white,
                                       titleColor: .buttonRed(),
                                       font: .avenir20(),
                                       isShadow: true,
                                       cornerRadius: 4)
    private let googleButton = UIButton(title: "Google",
                                       backgroundColor: .white,
                                       titleColor: .black,
                                       font: .avenir20(),
                                       isShadow: true,
                                       cornerRadius: 4)
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        setupConstaints()
    }
}

extension AuthViewController {
    private func setupConstaints() {
        setupLogoImage()
        setupStackView()
    }
    
    private func setupLogoImage() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImage)
        
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [getGoogleView(),
                                                       getEmailView(),
                                                       getLoginView()])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 40
        
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 160).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
    }
    
    private func getGoogleView() -> UIView {
        ButtonFormView(label: googleLabel, button: googleButton)
    }
    
    private func getEmailView() -> UIView {
        ButtonFormView(label: emailLabel, button: emailButton)
    }
    
    private func getLoginView() -> UIView {
        ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
    }
}

// MARK: SwiftUI

import SwiftUI

struct AuthViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let authViewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> some AuthViewController {
            authViewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    }
}
