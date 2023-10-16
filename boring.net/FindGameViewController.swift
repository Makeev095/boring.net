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
        gameForOneButton.setTitle("Activity for one", for: .normal)
        gameForOneButton.titleLabel?.font = .italicSystemFont(ofSize: 30)
        gameForOneButton.backgroundColor = UIColor(hexString: "#262A38")
        gameForOneButton.setTitleColor(UIColor(hexString: "#FFFFFF"), for: .normal)
        gameForOneButton.layer.cornerRadius = 45
        
        return gameForOneButton
    }()
    
    private var gameForCompanyButton: UIButton = {
       var gameForCompanyButton = UIButton()
        gameForCompanyButton.setTitle("Activity for company", for: .normal)
        gameForCompanyButton.titleLabel?.font = .italicSystemFont(ofSize: 30)
        gameForCompanyButton.setTitleColor(UIColor(hexString: "#FFFFFF"), for: .normal)
        gameForCompanyButton.backgroundColor = UIColor(hexString: "#262A38")
        gameForCompanyButton.layer.cornerRadius = 45
        
        return gameForCompanyButton
    }()
    
    private var lableForMainScreen: UILabel = {
        var lableForMainScreen = UILabel()
        lableForMainScreen.text = "Borring.Net"
        lableForMainScreen.textAlignment = .center
        lableForMainScreen.shadowColor = .red
        lableForMainScreen.textColor = UIColor(hexString: "#EF6D58")
        lableForMainScreen.font = .boldSystemFont(ofSize: 65)
        lableForMainScreen.backgroundColor = .clear
        
        return lableForMainScreen
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImageForMainScreen = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageForMainScreen.image = UIImage(named: "BackgroundImageForMainScreen")
        backgroundImageForMainScreen.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImageForMainScreen, at: 0)
        
        view.backgroundColor = UIColor(hexString: "#040C1E")
        view.addSubview(lableForMainScreen)
        view.addSubview(gameForOneButton)
        view.addSubview(gameForCompanyButton)
        gameForOneButton.addTarget(self, action: #selector(gameForOneButtonTapped), for: .touchUpInside)
        gameForCompanyButton.addTarget(self, action: #selector(gameForCompanyButtonTapped), for: .touchUpInside)
        setupConstraints()
    }

    func setupConstraints() {
        gameForOneButton.translatesAutoresizingMaskIntoConstraints = false
        gameForCompanyButton.translatesAutoresizingMaskIntoConstraints = false
        lableForMainScreen.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lableForMainScreen.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lableForMainScreen.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            lableForMainScreen.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            lableForMainScreen.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            lableForMainScreen.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            lableForMainScreen.bottomAnchor.constraint(equalTo: gameForOneButton.topAnchor, constant: 5),
            
            gameForOneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameForOneButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
            gameForOneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            gameForOneButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            gameForOneButton.heightAnchor.constraint(equalToConstant: 110),
        
            gameForCompanyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameForCompanyButton.topAnchor.constraint(equalTo: gameForOneButton.topAnchor, constant: 200),
            gameForCompanyButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            gameForCompanyButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            gameForCompanyButton.heightAnchor.constraint(equalToConstant: 110)])
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
