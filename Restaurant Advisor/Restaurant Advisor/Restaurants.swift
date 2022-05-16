//
//  Restaurants.swift
//  Restaurant Advisor
//
//  Created by Anis  on 07/03/2022.
//

import Foundation
import SwiftUI

struct Restaurant: Codable, Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var grade: Int
    var localization: String
    var phone_number: String
    var email: String
    var website: String
    var hours: String
}

class Api : ObservableObject{
    @Published var restaurants = [Restaurant]()
    
    func loadData(completion:@escaping ([Restaurant]) -> ()) {
        guard let url = URL(string: "http://127.0.0.1:8000/api/restaurants") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let restaurants = try! JSONDecoder().decode([Restaurant].self, from: data!)
            print(restaurants)
            DispatchQueue.main.async {
                completion(restaurants)
            }
        }.resume()
        
    }
}


