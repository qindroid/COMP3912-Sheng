//
//  addCateViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-25.
//

import UIKit

class addCateViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Add an expense"
        label.textColor = UIColor(hexString: "#42588B")
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    //----------------------------------------------------------------------------------------
    lazy var costLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Cost"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var costTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "$"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var costStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(costLabel)
        stack.addArrangedSubview(costTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var expenseLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Expense type"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var expenseTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = ""
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var expenseStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(expenseLabel)
        stack.addArrangedSubview(expenseTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var secondLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(expenseStack)
        stack.addArrangedSubview(costStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    //----------------------------------------------------------------------------------------
    lazy var odometerLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Odometer"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var odometerTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = "KM"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var odometerStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(odometerLabel)
        stack.addArrangedSubview(odometerTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var dateLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Date"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var dateTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = ""
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
    
    lazy var thirdLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(odometerStack)
        stack.addArrangedSubview(dateStack)
        stack.spacing = 20
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return stack
    }()
    
    lazy var descLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Description"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var descTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = ""
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var descStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(descLabel)
        stack.addArrangedSubview(descTF)
        stack.alignment = .center
        return stack
    }()
    
    //----------------------------------------------------------------------------------------
    lazy var capacityLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Capacity"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var capacityTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = ""
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var capacityStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(capacityLabel)
        stack.addArrangedSubview(capacityTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var tripLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Trip"
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    lazy var tripTF: BaseUITextField = {
        let tf = BaseUITextField()
        tf.placeholder = ""
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var tripStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(dateLabel)
        stack.addArrangedSubview(dateTF)
        stack.alignment = .center
        return stack
    }()
    
    lazy var forthLine: HStack = {
        let stack = HStack()
        stack.addArrangedSubview(capacityStack)
        stack.addArrangedSubview(tripStack)
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
        stack.addArrangedSubview(secondLine)
        stack.addArrangedSubview(thirdLine)
        stack.addArrangedSubview(forthLine)
        stack.addArrangedSubview(descStack)
        stack.addArrangedSubview(fifthLine)
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentStack)
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        NSLayoutConstraint.activate([
            contentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        // Do any additional setup after loading the view.
    }
    @objc func cancelHandler() {
        let pvc = LogViewController()
        self.navigationController?.pushViewController(pvc, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }
    @objc func saveHandler() {
        let pvc = LogViewController()
        self.navigationController?.pushViewController(pvc, animated: true)
        let vc = TabBarViewController()
        AppRouter.navigate(to: vc)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
