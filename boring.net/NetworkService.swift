//
//  NetworkService.swift
//  boring.net
//
//  Created by Макей 😈 on 25.08.2023.
//

import Foundation

final class NetworkService {
    
    private let session = URLSession.shared
    
    func getRandomActivityForOne(completion: @escaping ([Activity]) -> Void) {
        let url = URL(string: "https://www.boredapi.com/api/activity?participants=1")
        
        let configuration = URLSessionConfiguration.default
        
        let session = URLSession(configuration: configuration)
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            guard let data = data else {
                print(response!)
                return
            }
            do {
                let activity = try JSONDecoder().decode(Activity.self, from: data)
                print(activity.activity)
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    func getActivityForCompany() {
        let url = URL(string: "https://www.boredapi.com/api/activity?participants=3")

        let configuration = URLSessionConfiguration.default

        let session = URLSession(configuration: configuration)

        let task = session.dataTask(with: url!) { (data, response, error) in
            guard let data = data else {
                print(response!)
                return
            }
            do {
                let companyActivity = try JSONDecoder().decode(CompanyActivity.self, from: data)
                print(companyActivity.activity)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
//    func getActivityForCompany(completion: @escaping([CompanyActivity]) -> Void) {
//        guard let url = URL(string: "https://www.boredapi.com/api/activity?participants=3") else {
//            return
//        }
//
//        session.dataTask(with: url) { (data, _, error) in
//            guard let data = data else {
//                return
//            }
//            do {
//                 let companyActivity = try JSONDecoder().decode(GameForCompanyModel.self, from: data)
//                completion(companyActivity.randomActivity)
//                print(companyActivity.randomActivity)
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }

}
