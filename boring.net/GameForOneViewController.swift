//
//  GameForOneViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 22.08.2023.
//

import Foundation
import UIKit

final class GameForOneViewController: UITableViewController {
    
    private let networkService = NetworkService()
    private var gameForOneModel: [Activity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Activity For One"
        tableView.backgroundColor = UIColor(hexString: "#040C1E")
        tableView.register(GameForOneCell.self, forCellReuseIdentifier: "GameForOneCell")
        networkService.getRandomActivityForOne {[weak self] gameForOne in
            self?.gameForOneModel = gameForOne
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameForOneModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameForOneCell", for: indexPath) as? GameForOneCell else {
            return UITableViewCell()
        }
        
        let gameForOne = gameForOneModel[indexPath.row]
        cell.updateCell(model: gameForOne)
        return cell
    }
}
