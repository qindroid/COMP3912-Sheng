//
//  ViewController.swift
//  carlogs
//
//  Created by Shawn on 2022-06-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField? = {
        let tf = BaseUITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor.white
        tf.layer.shadowOpacity = 1.0
        tf.layer.shadowColor = UIColor.lightGray.cgColor
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let widthConstraint = tf.widthAnchor.constraint(equalToConstant: 370)
        widthConstraint.priority = UILayoutPriority.defaultHigh
        widthConstraint.isActive = true
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

