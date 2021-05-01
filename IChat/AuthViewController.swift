//
//  AuthViewController.swift
//  IChat
//
//  Created by Eugene Kiselev on 01.05.2021.
//

import UIKit

class AuthViewController: UIViewController {
}

// обертка для ViewController, которая будет заниматься отображением
import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all) // игнорим SafeArea
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let authViewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> some AuthViewController {
            authViewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    }
}
