//
//  addCarView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI
struct addCarView: View {
    var brand: String
    @State var cost = ""
    @State var fuel = ""
    @State var brands = ""
    @State var model = ""
    @State var tank = ""
    @State var odo = ""
    @State var number = 0
    @State var selectedCar: String = ""
    @State private var selection: String? = nil
    @State var action: Bool = false
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    VStack {
                        Text("Brands:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        NavigationLink(destination: brandsView(), tag: "brand", selection: $selection) { EmptyView() }
                        Button(action: {selection = "brand"}) {
                            
                            BrandsContent(brand: brand)
                        }
                        
                    }
                    VStack {
                        Text("Models:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("", text: $model)
                            .keyboardType(.decimalPad)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding()
                        
                    }
                }
                HStack {
                    VStack {
                        Text("Buying cost:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("$", text: $cost)
                            .keyboardType(.decimalPad)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding()
                        
                    }
                    VStack {
                        Text("Fuel Type:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("fuel type", text: $fuel)
                            .keyboardType(.decimalPad)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding()
                        
                    }
                }
                HStack {
                    VStack {
                        Text("Tank capacity")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("$", text: $tank)
                            .keyboardType(.decimalPad)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding()
                        
                    }
                    VStack {
                        Text("Odometer:")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        TextField("km", text: $odo)
                            .keyboardType(.decimalPad)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding()
                        
                    }
                }
                HStack {
                    NavigationLink(destination: garageView(id: c.selection), isActive: $action) {
                        EmptyView()
                    }
                    Text("Add")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        .onTapGesture {
                            self.addCar()
                    }
//                    NavigationLink(destination: garageView()) {
//                        Text("Add")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                            .frame(width: 150, height: 40)
//                            .background(Color.blue)
//                            .cornerRadius(10.0)
//                            .onTapGesture {
//                                self.addCar()
//                        }
//
//                    }
                    NavigationLink(destination: garageView(id: c.selection)) {
                         Text("Cancel")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 150, height: 40)
                            .background(Color.blue)
                            .cornerRadius(10.0)
                    }
                    
                }
            }
            
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    func addCar() {
        action = true
        let tempCar = Car(totalExpense: Int(cost)!, fuelType: fuel, brands: brand, models: model, tank: Int(tank)!, odo: Int(odo)!, image: model)
//        let defaultCar = Car(totalExpense: 2300, fuelType: "91", brands: "Honda", models: "civic", tank: 33, odo: 1123)
        print("add another car")
        print(c.cars.count)
        c.cars.append(tempCar)
    }
}

struct addCarView_Previews: PreviewProvider {
    static var previews: some View {
        addCarView(brand: "Choose a brand")
    }
}
struct BrandsContent : View {
    var brand: String
    var body: some View {
        return Text(brand)
            .font(.headline)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 170, height: 40)
            .background(.white)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 1)
            )
    }
}
