//
//  GameForOneModel.swift
//  boring.net
//
//  Created by Макей 😈 on 25.08.2023.
//

import Foundation

struct RandomActivityForOneModel: Decodable {
    var randomActivity: [Activity]
}

struct Activity: Decodable {
    var activity: String
    var type: String
    var participants: Int
    var price: Double
    var link: String
    var key: String
    var accessibility: Double
}

private enum CodingKeys: String, CodingKey {
    case activity
    case type
    case participants
    case price
    case link
    case key
    case accessibility
    case randomActivity
}
