//
//  RestaurantModel.swift
//  Restaurant Advisor
//
//  Created by Anis  on 07/03/2022.
//

import Foundation
import SwiftyJSON
import Alamofire
import SwiftUI


class RestaurantModel: ObservableObject{
    
    let lien = "http://127.0.0.1:56982/api"
    
    
    func AddRestaurant(params: [String: String], callback: @escaping (JSON)-> ()) {
            let url = lien+"/restaurant"
            let headers : HTTPHeaders = [
                "Accept" : "application/json"
            ]
            AF.request(url, method: .post, parameters: params, headers: headers).responseJSON { (response) in
                callback(JSON(response.value as Any))
            }
        }
    
}
