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
    private let emailLabel = UILabel(text: "Or Sign up with")
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
    
    
}

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
