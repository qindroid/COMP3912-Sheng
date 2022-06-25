//
//  ProfileViewController.swift
//  TravelApp
//
//  Created by Mostafa Davoodi on 10/25/21.
//

import UIKit

class ProfileViewController: UIViewController {
	
	lazy var friendsButton: BaseUIButton = {
		let button = BaseUIButton()
		button.setTitle("Add car", for: .normal)
		button.addTarget(self, action: #selector(friendsTapped), for: .touchUpInside)
		button.backgroundColor = UIColor(hexString: "#504487")
		button.heightAnchor.constraint(equalToConstant: 50).isActive = true
		button.widthAnchor.constraint(equalToConstant: 200).isActive = true
		button.layer.cornerRadius = 10
		return button
	}()
	
	lazy var logoutButton: BaseUIButton = {
		let button = BaseUIButton()
		button.setTitle("Logout", for: .normal)
		button.addTarget(self, action: #selector(logoutTapped), for: .touchUpInside)
		button.backgroundColor = UIColor(hexString: "#504487")
		button.heightAnchor.constraint(equalToConstant: 50).isActive = true
		button.widthAnchor.constraint(equalToConstant: 200).isActive = true
		button.layer.cornerRadius = 10
		return button
	}()
	
    lazy var firstCard: BasicLogCard = {
        let card = BasicLogCard()
        card.updateView(name: "2019 Honda Civic", expense: "test", fuelc: "test", averagec: "test", carname: UIImage(named: "civic"))
        card.heightAnchor.constraint(equalToConstant: 350).isActive = true
        card.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.90).isActive = true
        return card
    }()
    lazy var secondCard: BasicLogCard = {
        let card = BasicLogCard()
        card.updateView(name: "2022 Tesla Model S", expense: "test", fuelc: "test", averagec: "test", carname: UIImage(named: "tesla"))
        card.heightAnchor.constraint(equalToConstant: 350).isActive = true
        card.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.90).isActive = true
        return card
    }()
    
	lazy var contentStack: VStack = {
		let stack = VStack()
		stack.addArrangedSubview(friendsButton)
		stack.addArrangedSubview(logoutButton)
        stack.addArrangedSubview(firstCard)
        stack.addArrangedSubview(secondCard)
        stack.alignment = .top
		stack.spacing = 20
		return stack
	}()
    
    let scrollView: UIScrollView = {
            let v = UIScrollView()
            v.translatesAutoresizingMaskIntoConstraints = false
            v.backgroundColor = UIColor.white
            return v
    }()
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(true)
		self.parent?.title = "Cars"
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.white
        view.addSubview(scrollView)
        scrollView.addSubview(contentStack)
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8.0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
        view.backgroundColor = UIColor.white
        contentStack.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8.0).isActive = true
        contentStack.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8.0).isActive = true
        contentStack.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -8.0).isActive = true
        contentStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8.0).isActive = true
	}
	
	@objc func friendsTapped() {
		let addCarVC = AddCarViewController()
		self.navigationController?.pushViewController(addCarVC, animated: true)
	}
	
	@objc func logoutTapped() {
		AppRouter.navigate(to: WelcomeViewController())
	}
}
