//
//  Data.swift
//  Sichev_HW5
//
//  Created by Евгений on 02/10/2018.
//  Copyright © 2018 Evgeniy. All rights reserved.
//

import Foundation

struct DataApi: Decodable {
    
    let symbol: String
    let companyName: String
    let open: Double
    let close: Double
    let high: Double
    let low: Double
    let latestTime: String
    let change: Double
    let latestPrice: Double
}
