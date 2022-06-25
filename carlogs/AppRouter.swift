//
//  AppRouter.swift
//  carlogs
//
//  Created by Shawn on 2022-06-20.
//
//

import UIKit

class AppRouter {
	
	static func navigate(to vc: UIViewController) {
		if let scenceDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
			let nc = UINavigationController(rootViewController: vc)
			scenceDelegate.window?.rootViewController = nc
		}
	}
	
}
