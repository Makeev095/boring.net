//
//  GameForCompanyViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 22.08.2023.
//

import Foundation
import UIKit

final class GameForCompanyViewController: UITableViewController {
    
    private var networkService = NetworkService()
    var companyActivity: [CompanyActivity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Activity For Company"
        view.backgroundColor = .white
//        view.backgroundColor = UIColor(hexString: "#040C1E")
        tableView.register(GameForCompanyCell.self, forCellReuseIdentifier: "GameForCompanyCell")
        networkService.getActivityForCompany {[weak self] gameForCompany in
            self?.companyActivity = gameForCompany
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyActivity.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "companyActivity", for: indexPath) as? GameForCompanyCell else {
            return UITableViewCell()
        }
        
        let gameForCompany = companyActivity[indexPath.row]
        cell.updateCell(model: gameForCompany)
        return cell
    }
}
