//
//  Car.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import Foundation

public class GlobalCar: ObservableObject {
    @Published var cars: [Car] = []
    @Published var selection: Int = 0
    @Published var isLoggedIn = false
    init() {
        let defaultCar = Car(totalExpense: 15500, fuelType: "87", brands: "Honda", models: "civic", tank: 40, odo: 11000, image: "civic")
        if cars.count == 0 {
            cars.append(defaultCar)
        }
    }
    
    
}

class Car: Identifiable {
    var id:UUID?
    var image: String
    var cartitle: String
    var totalExpense: Int
    var fuelCom: Double
    var avgCost: Double
    var fuelType: String
    var models: String
    var tank: Int
    var odo: Int
    var brands: String
    var logs: [Log]
    var orgValue: Int
    init(totalExpense: Int, fuelType: String, brands: String, models: String, tank: Int, odo: Int, image: String) {
        id = UUID()
        self.totalExpense = totalExpense
        self.fuelType = fuelType
        self.models = models
        self.brands = brands
        self.tank = tank
        self.odo = odo
        self.avgCost = Double(totalExpense) / Double(odo)
        self.cartitle = brands + " " + models
        self.fuelCom = 0.0
        if image == "" {
            self.image = "carlogs"
        } else {
            self.image = image
        }
        logs = []
        orgValue = totalExpense
    }

    func test() {
        print("La la la la")
    }
    
    func logUpdate() {
        updateOdo()
    }
    
    func addToTotalCost(cost: Int) {
        totalExpense += cost
    }
    
    func updateOdo() {
        for log in logs {
            if odo < log.odo {
                odo = log.odo
            }
        }
    }
    
    func totalFuelCost() -> Int{
        var total = 0
        for log in logs {
            if log.type.contains("uel"){
                total += log.cost
            }
        }
        if total == 0 {
            total = 1
        }
        return total
    }
    
    func totalFuel() -> Int{
        var total = 0
        for log in logs {
            if log.type.contains("uel"){
                total += log.capacity
            }
        }
        return total
    }
    
    func totalFuelMileage() -> Int{
        var total = 0
        for log in logs {
            if log.type.contains("uel"){
                total += log.mileage
            }
        }
        if total == 0 {
            total = 1
        }
        return total
    }
    
    func getAvgFuelCom() -> Double {
        return Double(totalFuel())/Double(totalFuelMileage()) * 100
    }
    
    func logMileage() -> Int {
        var total = 0
        for log in logs {
            total += log.mileage
        }
        if total == 0 {
            total = 1
        }
        return total
    }
    
    func totalLogCost() -> Int{
        var total = 0
        for log in logs {
            total += log.cost
            
        }
        if total == 0 {
            total = 1
        }
        return total
    }
    
    func totalLogMileage() -> Int {
        var total = 0
        for log in logs {
           total += log.mileage
        }
        if total == 0 {
            total = 1
        }
        return total
    }
    
    func avgLogLoss() -> Double {
        return Double(totalLogCost())/Double(totalLogMileage())
    }
}

