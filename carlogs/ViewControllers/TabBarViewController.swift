//
//  TabBarViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-20.
//
//

import UIKit

class TabBarViewController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		let profileVC = ProfileViewController()
		profileVC.tabBarItem = UITabBarItem(title: "My Garage", image: UIImage(named: "mygarage"), tag: 0)
		
        let logVC = LogViewController()
        logVC.tabBarItem = UITabBarItem(title: "Log", image: UIImage(named: "log"), tag: 1)
        
        let summaryVC = SummaryViewController()
        summaryVC.tabBarItem = UITabBarItem(title: "Summary", image: UIImage(named: "summary"), tag: 1)
        
        let shareVC = ShareViewController()
        shareVC.tabBarItem = UITabBarItem(title: "Share", image: UIImage(named: "share"), tag: 1)
		
		
		tabBar.backgroundColor = UIColor(hexString: "#F9F9F9")
		tabBar.tintColor = UIColor(hexString: "#58CFC2")
		
		viewControllers = [profileVC, logVC, summaryVC, shareVC]
	}
	
}
