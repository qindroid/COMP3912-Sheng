//
//  BaseUIStackView.swift
//  carlogs
//
//  Created by Shawn on 2022-06-22.
//


import UIKit
class BaseUIStackView: UIStackView {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	required init(coder: NSCoder) {
		super.init(coder: coder)
		setupView()
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		setupView()
	}
	
	func setupView() {
		translatesAutoresizingMaskIntoConstraints = false
	}
}
