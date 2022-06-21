//
//  SummaryViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-18.
//

import UIKit

class SummaryViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Summary"
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
    //------------------------------------------------------------------------
    lazy var totalExpenselabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total Expense:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var totalExpenseDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$7720"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var totalExpenseStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(totalExpenselabel)
        stack.addArrangedSubview(totalExpenseDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var carValuelabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Car Value:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var carValueDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$67720"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var carValueStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(carValuelabel)
        stack.addArrangedSubview(carValueDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var totalLosslabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total loss:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var totalLossDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$65220"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var totalLossStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(totalLosslabel)
        stack.addArrangedSubview(totalLossDatalabel)
        stack.alignment = .leading
        return stack
    }()

    
    lazy var secondLine: HStack = {
        let stack = HStack()
        stack.spacing = 20
        stack.addArrangedSubview(totalExpenseStack)
        stack.addArrangedSubview(carValueStack)
        stack.addArrangedSubview(totalLossStack)
        stack.alignment = .center
        return stack
    }()
    //------------------------------------------------------------------------
    lazy var pclabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Power Consumption:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var pcDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "0.31Kwh"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var pcStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(pclabel)
        stack.addArrangedSubview(pcDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var pcostlabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Power Cost:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var pcostDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$2700"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var pcostStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(pcostlabel)
        stack.addArrangedSubview(pcostDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var odolabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total mileage:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var odoDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "78000KM"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var odoStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(odolabel)
        stack.addArrangedSubview(odoDatalabel)
        stack.alignment = .leading
        return stack
    }()

    
    lazy var forthLine: HStack = {
        let stack = HStack()
        stack.spacing = 20
        stack.addArrangedSubview(pcStack)
        stack.addArrangedSubview(pcostStack)
        stack.addArrangedSubview(odoStack)
        stack.alignment = .center
        return stack
    }()
    //------------------------------------------------------------------------
    lazy var aclabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Average cost:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var acDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$0.12/Km"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var acStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(aclabel)
        stack.addArrangedSubview(acDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var tAvgLosslabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total average loss:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var tAvgLossDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$2.5/KM"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var tAvgLossStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(tAvgLosslabel)
        stack.addArrangedSubview(tAvgLossDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var costperkmLabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Average cost/KM:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    lazy var costperkmDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$0.12"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    
    lazy var costperkmStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(costperkmLabel)
        stack.addArrangedSubview(costperkmDatalabel)
        stack.alignment = .leading
        return stack
    }()

    
    lazy var fifthLine: HStack = {
        let stack = HStack()
        stack.spacing = 10
        stack.addArrangedSubview(acStack)
        stack.addArrangedSubview(tAvgLossStack)
        stack.addArrangedSubview(costperkmStack)
        stack.alignment = .center
        return stack
    }()
    lazy var chartImage: UIImageView = {
        let screenSize: CGRect = UIScreen.main.bounds
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        iv.image = UIImage(named: "barChart")
        return iv
    }()
    
    lazy var barChartStack: VStack = {
        let stack = VStack()
        stack.spacing = 0
        stack.addArrangedSubview(chartImage)
        stack.widthAnchor.constraint(equalToConstant: 350).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 280).isActive = true
        stack.alignment = .center
        return stack
    }()
    
    
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(carStack)
        stack.addArrangedSubview(secondLine)
        stack.addArrangedSubview(forthLine)
        stack.addArrangedSubview(fifthLine)
        stack.addArrangedSubview(barChartStack)
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
        self.parent?.title = ""
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
}
