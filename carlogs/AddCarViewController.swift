//
//  AddCarViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-20.
//

import UIKit

class AddCarViewController: UIViewController {
    
    
    lazy var titleLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Add a vehicle"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    lazy var brandLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Brands"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var brandBTN: UIButton = {
        let button = UIButton()
        button.setTitle("Choose brand", for: .normal)
        button.backgroundColor = UIColor(hexString: "#58CFC2")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(chooseBrandHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var brandStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(brandLabel)
        stack.addArrangedSubview(brandBTN)
        stack.alignment = .center
        return stack
    }()
    
    lazy var fuelLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Fuel Type"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var fuelTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "FuelType"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var fuelStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(fuelLabel)
        stack.addArrangedSubview(fuelTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var firstLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(brandStack)
        stack.addArrangedSubview(fuelStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    //----------------------------------------------------------------------------------------
    lazy var yearLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Year"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var yearTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Year"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var yearStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(yearLabel)
        stack.addArrangedSubview(yearTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var modelLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Model"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var modelTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Model"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var modelStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(modelLabel)
        stack.addArrangedSubview(modelTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var secondLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(yearStack)
        stack.addArrangedSubview(modelStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    //----------------------------------------------------------------------------------------
    lazy var tankLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Tank Capacity"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var tankTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "Lites"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var tankStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(tankLabel)
        stack.addArrangedSubview(tankTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var odoLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Odometer"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var odoTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "KM"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var odoStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(odoLabel)
        stack.addArrangedSubview(odoTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var thirdLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(tankStack)
        stack.addArrangedSubview(odoStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    
    //----------------------------------------------------------------------------------------
    lazy var priceLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Purchasing price"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var priceTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "$"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var priceStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(priceLabel)
        stack.addArrangedSubview(priceTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var dateLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Purchasing Date"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var dateTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "2022/11/22"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var dateStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(dateLabel)
        stack.addArrangedSubview(dateTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var forthLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(priceStack)
        stack.addArrangedSubview(dateStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    
    lazy var cancelBTN: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.backgroundColor = UIColor(hexString: "#8C8A8D")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(cancelHandler), for: .touchUpInside)
        return button
    }()
    
    lazy var saveBTN: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.backgroundColor = UIColor(hexString: "#8C8A8D")
        button.layer.shadowOpacity = 1.0
        button.layer.shadowColor = UIColor.lightGray.cgColor
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(saveHandler), for: .touchUpInside)
        return button
    }()
    lazy var fifthLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(cancelBTN)
        stack.addArrangedSubview(saveBTN)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(secondLine)
        stack.addArrangedSubview(thirdLine)
        stack.addArrangedSubview(forthLine)
        stack.addArrangedSubview(fifthLine)
        stack.spacing = 50
        stack.alignment = .center
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentStack)
        view.backgroundColor = UIColor(hexString: "#ffffff")
        // Do any additional setup after loading the view.
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    @objc func chooseBrandHandler() {
        let vc = FriendsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func cancelHandler() {
        let pvc = ProfileViewController()
        self.navigationController?.pushViewController(pvc, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }
    @objc func saveHandler() {
        let pvc = ProfileViewController()
        self.navigationController?.pushViewController(pvc, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }
    
}
