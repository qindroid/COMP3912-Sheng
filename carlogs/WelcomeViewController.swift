//
//  WelcomeViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-15.
//

import SwiftUI


class WelcomeViewController: UIViewController {
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView(frame: CGRect(x: 50, y: 150, width: 350, height: 70))
        iv.image = UIImage(named: "splashImage")
        return iv
    }()
    
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Sign in"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    lazy var emailLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Email"
        label.textColor = UIColor(hexString: "#B3B5B9")
        return label
    }()
    
    lazy var pwdLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Password"
        label.textColor = UIColor(hexString: "#B3B5B9")
        return label
    }()
    
    lazy var emailTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let widthConstraint = tf.widthAnchor.constraint(equalToConstant: 370)
        widthConstraint.priority = UILayoutPriority.defaultHigh
        widthConstraint.isActive = true
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    lazy var passTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let widthConstraint = tf.widthAnchor.constraint(equalToConstant: 370)
        widthConstraint.priority = UILayoutPriority.defaultHigh
        widthConstraint.isActive = true
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    lazy var labelsStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(emailLabel)
        stack.addArrangedSubview(emailTF)
        stack.addArrangedSubview(pwdLabel)
        stack.addArrangedSubview(passTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var loginButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(hexString: "#504487")
        button.layer.cornerRadius = 10
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowColor = UIColor.lightGray.cgColor
        return button
    }()
    
    lazy var signUpButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("SIGN UP", for: .normal)
        button.setTitleColor(UIColor(hexString: "#8C8A8D"), for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 10
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowColor = UIColor.lightGray.cgColor
        return button
    }()
    
    
    lazy var facebookButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Facebook", for: .normal)
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.backgroundColor = UIColor(hexString: "#42588B")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.widthAnchor.constraint(equalToConstant: 140).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    lazy var socialNetworks: HStack = {
        let stack = HStack()
        stack.spacing = 10
        stack.addArrangedSubview(facebookButton)
        stack.addArrangedSubview(twitterButton)
        return stack
    }()
    
    lazy var twitterButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Twitter", for: .normal)
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.backgroundColor = UIColor(hexString: "#0C8FDD")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.widthAnchor.constraint(equalToConstant: 140).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var buttonsStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(loginButton)
        stack.addArrangedSubview(socialNetworks)
        stack.addArrangedSubview(signUpButton)
        stack.widthAnchor.constraint(equalToConstant: 260).isActive = true
        return stack
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Sign in"
        view.backgroundColor = UIColor.white
        
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 200),
        ])
        
        
        view.addSubview(labelsStack)
        NSLayoutConstraint.activate([
            labelsStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelsStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
        view.addSubview(buttonsStack)
        NSLayoutConstraint.activate([
            buttonsStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            buttonsStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    @objc func signUpTapped() {
        let signUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    @objc func loginTapped() {
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }

}
