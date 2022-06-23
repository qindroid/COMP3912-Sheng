//
//  BaseUIButton.swift
//  carlogs
//
//  Created by Shawn on 2022-06-22.
//


import UIKit

class BaseUIButton: UIButton {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	func setupView() {
		translatesAutoresizingMaskIntoConstraints = false
	}
}
