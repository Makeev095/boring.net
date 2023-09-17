//
//  GameForCompanyModel.swift
//  boring.net
//
//  Created by Макей 😈 on 25.08.2023.
//

import Foundation

struct GameForCompanyModel: Decodable {
    var randomActivity: [CompanyActivity]
}

struct CompanyActivity: Decodable {
    var activityForCompany: String
    var type: String
    var participants: Int
    var price: Double
    var key: String
    var accessibility: Double
    var link: String
}

enum CodingKeysForCompanyActivity: String, CodingKey {
    case activityForCompany
    case type
    case participants
    case price
    case link
    case key
    case accessibility
}
