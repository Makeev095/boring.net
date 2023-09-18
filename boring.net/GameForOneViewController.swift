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
        view.backgroundColor = .white
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
        gameForOneModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameForOneCell", for: indexPath) as? GameForOneCell else {
            return UITableViewCell()
        }
        let gameForOne = gameForOneModel[indexPath.row]
        cell.updateCell(model: gameForOne)
        return cell
    }
    
    private var labelForShowingGameForOne: UILabel = {
        var labelForShowingGameForOne = UILabel()
        return labelForShowingGameForOne
    }()
    
//  Добавление картинки на весь экран

//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "GameForOneBackgroundImage")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
        
}
