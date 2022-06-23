//
//  BasicLogCard.swift
//  carlogs
//
//  Created by Shawn on 2022-06-22.
//

import UIKit

class BasicLogCard: UIStackView {
    
    
    lazy var nameLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = UIColor(hexString: "#9F9EA5")
        return label
    }()
    
    
    lazy var carImage: UIImageView = {
        let iv = UIImageView()
        iv.heightAnchor.constraint(equalToConstant: 250).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 180).isActive = true
        iv.layer.cornerRadius = 30
        return iv
    }()
    
    lazy var carImageStack: VStack = {
        let stack = VStack()
        stack.spacing = 0
        stack.addArrangedSubview(carImage)
        stack.alignment = .leading
        return stack
    }()
    
    lazy var totalExpenselabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total Expenses:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var totalExpenseDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var totalExpenseStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(totalExpenselabel)
        stack.addArrangedSubview(totalExpenseDatalabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()

    lazy var fuelcLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Fuel consumption:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var fuelcDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var fuelcStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(fuelcLabel)
        stack.addArrangedSubview(fuelcDatalabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()

    
    lazy var averagecostLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Average cost/KM:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var averagecostDataLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var averagecostStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(averagecostLabel)
        stack.addArrangedSubview(averagecostDataLabel)
        stack.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.28).isActive = true
        stack.alignment = .leading
        return stack
    }()

    lazy var labelStack: VStack = {
        let stack = VStack()
        stack.spacing = 10
        stack.addArrangedSubview(totalExpenseStack)
        stack.addArrangedSubview(fuelcStack)
        stack.addArrangedSubview(averagecostStack)
        stack.alignment = .leading
        return stack
    }()

    lazy var carStack: HStack = {
        let stack = HStack()
        stack.spacing = 10
        stack.addArrangedSubview(carImage)
        stack.addArrangedSubview(labelStack)
        stack.alignment = .leading
        return stack
    }()
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(nameLabel)
        stack.addArrangedSubview(carStack)
        stack.spacing = 16
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView(){
        addSubview(contentStack)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func updateView(
        name: String,
        expense: String,
        fuelc: String,
        averagec: String,
        carname: UIImage?
    ) {
        nameLabel.text = name
        totalExpenseDatalabel.text = expense
        fuelcDatalabel.text = fuelc
        averagecostDataLabel.text = averagec
        carImage.image = carname
    }
}
