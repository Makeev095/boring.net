//
//  FindGameViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 02.08.2023.
//

import UIKit

class FindGameViewController: UIViewController {
    
    private var gameForOneButton: UIButton = {
        let gameForOneButton = UIButton()
        gameForOneButton.setTitle("Занятия для одного", for: .normal)
        gameForOneButton.backgroundColor = .cyan
        gameForOneButton.setTitleColor(.gray, for: .normal)
        gameForOneButton.layer.cornerRadius = 45
        
        return gameForOneButton
    }()
    
    private var gameForCompanyButton: UIButton = {
       var gameForCompanyButton = UIButton()
        gameForCompanyButton.setTitle("Занятия для компании", for: .normal)
        gameForCompanyButton.setTitleColor(.gray, for: .normal)
        gameForCompanyButton.backgroundColor = .cyan
        gameForCompanyButton.layer.cornerRadius = 45
        
        return gameForCompanyButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        view.addSubview(gameForOneButton)
        view.addSubview(gameForCompanyButton)
        gameForOneButton.addTarget(self, action: #selector(gameForOneButtonTapped), for: .touchUpInside)
        gameForCompanyButton.addTarget(self, action: #selector(gameForCompanyButtonTapped), for: .touchUpInside)
        setupConstraints()
    }

    func setupConstraints() {
        gameForOneButton.translatesAutoresizingMaskIntoConstraints = false
        gameForCompanyButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gameForOneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameForOneButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            gameForOneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            gameForOneButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            gameForOneButton.heightAnchor.constraint(equalToConstant: 100),
        
            gameForCompanyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameForCompanyButton.topAnchor.constraint(equalTo: gameForOneButton.topAnchor, constant: 200),
            gameForCompanyButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            gameForCompanyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            gameForCompanyButton.heightAnchor.constraint(equalToConstant: 100)])
    }
    
    @objc func gameForOneButtonTapped() {
        navigationController?.pushViewController(GameForOneViewController(), animated: true)
        print("Game for one button was tapped")
    }
    
    @objc func gameForCompanyButtonTapped() {
        navigationController?.pushViewController(GameForCompanyViewController(), animated: true)
        print("Game for company button was tapped")
    }
}
