//
//  LogCategoryViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-24.
//


import UIKit

class LogCategoryViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Log"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()

    lazy var addMaintenanceButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Maintenance", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "maintenance"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    lazy var addFuelButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Fuel/Recharge", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "fuel"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.45).isActive = true
        button.heightAnchor.constraint(equalToConstant: 250).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    lazy var firstLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(addMaintenanceButton)
        stack.addArrangedSubview(addFuelButton)
        stack.spacing = 20
        stack.alignment = .center
        return stack
    }()
    lazy var addInsuranceButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Insurance", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "insurance"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    lazy var addDailyButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Daily", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "daily"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.45).isActive = true
        button.heightAnchor.constraint(equalToConstant: 250).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    lazy var secondLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(addInsuranceButton)
        stack.addArrangedSubview(addDailyButton)
        stack.spacing = 20
        stack.alignment = .center
        return stack
    }()
    lazy var addGadgetButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Gadgets", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "gadgets"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    lazy var addRepairButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 24)
        var configuration = UIButton.Configuration.plain()
        configuration.attributedTitle = AttributedString("Ascending Order", attributes: container)
        configuration.image = UIImage(systemName: "arrow.down.to.line")
        configuration.imagePlacement = .top
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.setTitle("Repair", for: .normal)
        button.addTarget(self, action: #selector(addCate), for: .touchUpInside)
        button.setImage(UIImage(named: "repair"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = UIColor.white
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.setTitleColor(UIColor.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.45).isActive = true
        button.heightAnchor.constraint(equalToConstant: 250).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    lazy var thirdLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(addGadgetButton)
        stack.addArrangedSubview(addRepairButton)
        stack.spacing = 20
        stack.alignment = .center
        return stack
    }()
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(secondLine)
        stack.addArrangedSubview(thirdLine)
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

    
    @objc func addCate() {
        let logcatevc = addCateViewController()
        self.navigationController?.pushViewController(logcatevc, animated: true)
    }
    
}
