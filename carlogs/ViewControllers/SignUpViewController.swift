//
//  SignUpViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-15.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    lazy var logo2: UIImageView = {
        let iv = UIImageView(frame: CGRect(x: 50, y: 150, width: 350, height: 70))
        iv.image = UIImage(named: "splashImage")
        return iv
    }()
    
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Carlogs"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    lazy var usernameTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "User name"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
    }()
    
    lazy var emailTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
    }()
    
    lazy var passTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 25
        return tf
    }()
    
    lazy var signupButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(usernameTF)
        stack.addArrangedSubview(emailTF)
        stack.addArrangedSubview(passTF)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(buttonStack)
        stack.addArrangedSubview(signupButton)
        stack.spacing = 50
        stack.alignment = .center
        
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hexString: "#ffffff")
        
        view.addSubview(contentStack)
        
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func signUpHandler() {
//        let profileVC = ProfileViewController()
//        self.navigationController?.pushViewController(profileVC, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }
    
}
