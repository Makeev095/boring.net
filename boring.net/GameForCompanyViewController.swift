//
//  GameForCompanyViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 22.08.2023.
//

import Foundation
import UIKit

class GameForCompanyViewController: UITableViewController {
    
    private var networkService = NetworkService()
    var companyActivity = [CompanyActivity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Activity For Company"
        networkService.getActivityForCompany()
//        view.backgroundColor = UIColor(hexString: "#040C1E")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyActivity.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "companyActivity", for: indexPath)
//        cell.textLabel?.text = companyActivity[indexPath.row]
        return cell
    }
}
