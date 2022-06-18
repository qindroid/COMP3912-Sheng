//
//  DataProvider.swift
//  TravelApp
//
//  Created by Mostafa Davoodi on 10/25/21.
//

import UIKit

class DataProvider {
	
	static func makeData() -> [(String, [User])] {
		
		var aSection: [User] = []
		var bSection: [User] = []
		var cSection: [User] = []
		
		aSection.append(
			User(
				image: UIImage(named: "1"),
				nickName: "Acura",
				location: "Japan",
				age: ""
			)
		)
		
		aSection.append(
			User(
				image: UIImage(named: "2"),
				nickName: "Alfa Romeo",
				location: "Italy",
				age: ""
			)
		)
		
        aSection.append(
			User(
				image: UIImage(named: "3"),
				nickName: "Aston Martin",
				location: "Italy",
				age: ""
			)
		)
		
		
		
		return [
			("A", aSection),
			("B", bSection),
			("C", cSection)
		]
		
	}
}


