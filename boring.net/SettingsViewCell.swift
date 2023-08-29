//
//  SettingsViewCell.swift
//  boring.net
//
//  Created by Макей 😈 on 21.08.2023.
//

import Foundation
import UIKit

class SettingsViewCell: UITableViewCell {
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Язык"
        label.textAlignment = .center
        label.textColor = .red
        label.layer.cornerRadius = 25
        
        return label
    }()
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: centerXAnchor),
                                     label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                                     label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
                                     label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 20),
                                     label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)])
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews() {
        contentView.addSubview(label)
        setupConstraints()
    }
}
