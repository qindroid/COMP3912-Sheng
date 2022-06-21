//
//  SummaryViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-18.
//

import UIKit

class SummaryViewController: UIViewController {
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.parent?.title = "Summary"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
}
