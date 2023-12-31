//
//  GameForCompanyCell.swift
//  boring.net
//
//  Created by Макей 😈 on 30.11.2023.
//

import Foundation
import UIKit

class GameForCompanyCell: UITableViewCell {
    
    private var text: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.textColor = .red
        text.font = UIFont(name: "Arial", size: 30)
        return text
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateCell(model: CompanyActivity) {
        text.text = (model.activity)
    }
    
    private func setupViews() {
        contentView.addSubview(text)
        setupConstraints()
    }
    
    private func setupConstraints() {
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            text.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 300),
            text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -320),
            text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 80),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -45)
        ])
    }
}
