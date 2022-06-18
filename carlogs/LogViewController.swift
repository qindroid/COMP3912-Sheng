//
//  LogViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-18.
//

import UIKit

class LogViewController: UIViewController {
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.parent?.title = "Log"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
    
    @objc func friendsTapped() {
        let friendsVC = FriendsViewController()
        self.navigationController?.pushViewController(friendsVC, animated: true)
    }
    
    @objc func logoutTapped() {
        AppRouter.navigate(to: WelcomeViewController())
    }
}
