//
//  Log.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import Foundation

class Log: Identifiable {
    var type: String
    var mileage: Int
    var cost: Int
    var date: String
    var capacity: Int
    var odo: Int
    var desc: String
    init(type: String, mileage: Int, cost: Int, date: String, capacity: Int, odo: Int, desc: String) {
        self.type = type
        self.mileage = mileage
        self.cost = cost
        self.date = date
        self.capacity = capacity
        self.odo = odo
        self.desc = desc
    }
}
