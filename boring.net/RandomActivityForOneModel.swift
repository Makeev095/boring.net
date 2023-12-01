//
//  GameForOneModel.swift
//  boring.net
//
//  Created by Макей 😈 on 25.08.2023.
//

import Foundation

struct RandomActivityForOneModel: Decodable {
    let ActivityForOne: [Activity]
}

struct Activity: Decodable {
    let activity: String
    let type: String
    let participants: Int
    let price: Double
    let link: String
    let key: String
    let accessibility: Double
}
