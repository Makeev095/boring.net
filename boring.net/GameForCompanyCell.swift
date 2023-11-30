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
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        return label
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
        text.text = model.activity
        
        DispatchQueue.global().async {
            if let url = URL(string: model.activity ?? ""), let data = try? Data(contentsOf: url)
            {
//                DispatchQueue.main.async {
//                    self.friendImageView.image = UIImage(data: data)
//                }
            }
        }
    }
    
    private func setupViews() {
        contentView.addSubview(text)
        setupConstraints()
    }
    
    private func setupConstraints() {
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            text.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            text.leadingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}
