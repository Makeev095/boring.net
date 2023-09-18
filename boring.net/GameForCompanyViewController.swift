//
//  GameForCompanyViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 22.08.2023.
//

import Foundation
import UIKit

class GameForCompanyViewController: UIViewController {
    
    private var networkService = NetworkService()
    override func viewDidLoad() {
        super.viewDidLoad()
        networkService.GetActivityForCompany()
        view.backgroundColor = UIColor(hexString: "#040C1E")
    }
}
