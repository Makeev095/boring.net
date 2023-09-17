//
//  NetworkService.swift
//  boring.net
//
//  Created by Макей 😈 on 25.08.2023.
//

import Foundation

func getRandomActivityForOne() {
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

func GetActivityForCompany() {
    let url = URL(string: "http://www.boredapi.com/api/activity?participants=3")
    
    let configuration = URLSessionConfiguration.default
    
    let session = URLSession(configuration: configuration)
    
    let task = session.dataTask(with: url!) { (data, response, error) in
        guard let data = data else {
            print(response!)
            return
        }
        do {
            let companyActivity = try JSONDecoder().decode(CompanyActivity.self, from: data)
            print(companyActivity.activityForCompany)
        } catch {
            print(error)
        }
    }
    task.resume()
}
