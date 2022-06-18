//
//  TabBarViewController.swift
//  TravelApp
//
//  Created by Mostafa Davoodi on 10/28/21.
//

import UIKit

class TabBarViewController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		let profileVC = ProfileViewController()
		profileVC.tabBarItem = UITabBarItem(title: "My Garage", image: UIImage(named: "mygarage"), tag: 0)
		
        let logVC = LogViewController()
        logVC.tabBarItem = UITabBarItem(title: "Log", image: UIImage(named: "log"), tag: 1)
        
        let friendsVC = FriendsViewController()
        friendsVC.tabBarItem = UITabBarItem(title: "Summary", image: UIImage(named: "summary"), tag: 1)
        
        let shareVC = ShareViewController()
        shareVC.tabBarItem = UITabBarItem(title: "Share", image: UIImage(named: "share"), tag: 1)
		
		
		tabBar.backgroundColor = UIColor(hexString: "#F9F9F9")
		tabBar.tintColor = UIColor(hexString: "#58CFC2")
		
		viewControllers = [profileVC, logVC, friendsVC, shareVC]
	}
	
}
