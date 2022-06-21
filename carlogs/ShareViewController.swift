//
//  LogViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-18.
//

import UIKit

class ShareViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Share"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    lazy var carLabel: UILabel = {
        let label = UILabel()
        label.text = "2021 Honda Civic"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    lazy var firstLine: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(carLabel)
        stack.spacing = 0
        stack.alignment = .leading
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var carImage: UIImageView = {
        let screenSize: CGRect = UIScreen.main.bounds
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: screenSize.height * 0.2))
        iv.image = UIImage(named: "civic")
        return iv
    }()
    
    lazy var carStack: VStack = {
        let stack = VStack()
        stack.spacing = 0
        stack.addArrangedSubview(carImage)
        stack.widthAnchor.constraint(equalToConstant: 350).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 280).isActive = true
        stack.alignment = .center
        return stack
    }()
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(carStack)
        stack.spacing = 50
        stack.alignment = .center
        return stack
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.parent?.title = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentStack)

        view.backgroundColor = UIColor.white
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
}
