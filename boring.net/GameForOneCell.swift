//
//  GameForOneCell.swift
//  boring.net
//
//  Created by Макей 😈 on 18.09.2023.
//

import UIKit

final class GameForOneCell: UITableViewCell {

    private var text: UILabel = {
        let text = UILabel()
        text.text = "Name"
        text.textColor = .red
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
    
    func updateCell(model: Activity) {
        text.text = (model.activity )
        DispatchQueue.global().async {
            if let url = URL(string: model.activity), let _ = try? Data(contentsOf: url) {
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
            text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 50)
        ])
    }
}
