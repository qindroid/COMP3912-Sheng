//
//  BaseUITextField.swift
//  carlogs
//
//  Created by Shawn on 2022-06-22.
//

import UIKit

class BaseUITextField: UITextField {
	
	var textPadding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setupView()
	}
	
	func setupView() {
		translatesAutoresizingMaskIntoConstraints = false
	}
	
	override func textRect(forBounds bounds: CGRect) -> CGRect {
		let rect = super.textRect(forBounds: bounds)
		return rect.inset(by: textPadding)
	}
}
