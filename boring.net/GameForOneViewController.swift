//
//  GameForOneViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 22.08.2023.
//

import Foundation
import UIKit

class GameForOneViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomActivityForOne()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "GameForOneBackgroundImage")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
