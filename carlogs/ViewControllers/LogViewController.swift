//
//  LogViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-18.
//

import UIKit

class LogViewController: UIViewController {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Log"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    lazy var addButton: BaseUIButton = {
        let button = BaseUIButton()
        button.setTitle("Add log", for: .normal)
        button.addTarget(self, action: #selector(addTapped), for: .touchUpInside)
        button.backgroundColor = UIColor(hexString: "#504487")
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 90).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    lazy var titleLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(addButton)
        stack.spacing = 0
        stack.alignment = .leading
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
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
        stack.addArrangedSubview(titleLine)
        stack.addArrangedSubview(carLabel)
        stack.spacing = 0
        stack.alignment = .leading
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var carImage: UIImageView = {
        let screenSize: CGRect = UIScreen.main.bounds
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
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
    
    lazy var logTypelabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Fuel"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.textAlignment = .left
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.4).isActive = true
        return label
    }()
    lazy var LogDatelabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "2022-1-1"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.textAlignment = .right
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.4).isActive = true
        return label
    }()
    lazy var titleStack: HStack = {
        let stack = HStack()
        stack.spacing = 0
        stack.addArrangedSubview(logTypelabel)
        stack.addArrangedSubview(LogDatelabel)
        stack.alignment = .leading
        return stack
    }()
    //------------------------------------------------------------------------
    lazy var costlabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Cost:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var costDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$7720"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var costStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(costlabel)
        stack.addArrangedSubview(costDatalabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var triplabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Trip:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var tripDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "375KM"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var tripStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(triplabel)
        stack.addArrangedSubview(tripDatalabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var locationLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Location:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var locationDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "home"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var locationStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(locationLabel)
        stack.addArrangedSubview(locationDatalabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()

    
    lazy var logFirstLine: HStack = {
        let stack = HStack()
        stack.spacing = 0
        stack.addArrangedSubview(costStack)
        stack.addArrangedSubview(tripStack)
        stack.addArrangedSubview(locationStack)
        stack.alignment = .center
        return stack
    }()
    //------------------------------------------------------------------------
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(carStack)
        stack.addArrangedSubview(titleStack)
        stack.addArrangedSubview(logFirstLine)
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()
    
    let scrollView: UIScrollView = {
            let v = UIScrollView()
            v.translatesAutoresizingMaskIntoConstraints = false
            v.backgroundColor = UIColor.white
            return v
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.parent?.title = "Log"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(contentStack)
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8.0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
        view.backgroundColor = UIColor.white
        contentStack.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8.0).isActive = true
        contentStack.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8.0).isActive = true
        contentStack.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -8.0).isActive = true
        contentStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8.0).isActive = true
    }
    
    @objc func addTapped() {
        let logcatevc = LogCategoryViewController()
        self.navigationController?.pushViewController(logcatevc, animated: true)
    }
    
    @objc func logoutTapped() {
        AppRouter.navigate(to: WelcomeViewController())
    }
}
