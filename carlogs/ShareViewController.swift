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
    lazy var totalAvgLostlabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total average loss:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var totalAvgLostDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$2.3/KM"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    
    lazy var totalAvgLostStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(totalAvgLostlabel)
        stack.addArrangedSubview(totalAvgLostDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var avgLostlabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Total average loss:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var avgLostDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "$2.3/KM"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    
    lazy var avgLostStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(avgLostlabel)
        stack.addArrangedSubview(avgLostDatalabel)
        stack.alignment = .leading
        return stack
    }()

    
    lazy var secondLine: HStack = {
        let stack = HStack()
        stack.spacing = 20
        stack.addArrangedSubview(totalAvgLostStack)
        stack.addArrangedSubview(avgLostStack)
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
    
    //------------------------------------------------------------------------
    lazy var ranklabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "My Rank:      "
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var rankDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Top 67%"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    
    lazy var rankStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(ranklabel)
        stack.addArrangedSubview(rankDatalabel)
        stack.alignment = .leading
        return stack
    }()
    
    
    lazy var changeslabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "Changes:"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        return label
    }()
    
    lazy var changesDatalabel: BaseUILabel = {
        let label = BaseUILabel()
        label.text = "+ 1%"
        label.textColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    
    lazy var changesStack: VStack = {
        let stack = VStack()
        stack.spacing = 20
        stack.addArrangedSubview(changeslabel)
        stack.addArrangedSubview(changesDatalabel)
        stack.alignment = .leading
        return stack
    }()

    
    lazy var thirdLine: HStack = {
        let stack = HStack()
        stack.spacing = 20
        stack.addArrangedSubview(rankStack)
        stack.addArrangedSubview(changesStack)
        stack.alignment = .center
        return stack
    }()
    lazy var contentStack: VStack = {
        let stack = VStack()
        stack.addArrangedSubview(firstLine)
        stack.addArrangedSubview(carStack)
        stack.addArrangedSubview(secondLine)
        stack.addArrangedSubview(barChartStack)
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
