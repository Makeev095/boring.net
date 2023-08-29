//
//  SettingsViewController.swift
//  boring.net
//
//  Created by Макей 😈 on 02.08.2023.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Настройки"
        tabBarItem.title = "Настройки"
        tableView.register(SettingsViewCell.self, forCellReuseIdentifier: "settingsCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        SettingsViewCell()
    }

}
