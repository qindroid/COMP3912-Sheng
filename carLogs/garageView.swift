//
//  garageView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI



struct garageView: View {
    @State var temp: [Car] = c.cars
    @State private var selection: String? = nil
    @ObservedObject var obeserveC = c
    var id: Int
    var body: some View {
        NavigationView{
            VStack() {
                HStack {
                    NavigationLink(destination: addCarView(brand: "Choose a brand"), tag: "Add", selection: $selection) { EmptyView() }
                    Button(action: {selection = "Add"}) {
                        AddCarButtonContent()
                    }.padding(.trailing, 10)
                    NavigationLink(destination: garageView(id: id), tag: "Refresh", selection: $selection) { EmptyView() }
                    Button(action: {update()}) {
                        Image(systemName: "arrow.clockwise")
                            .resizable()
                            .frame(width: 20, height: 25, alignment: .center)
                    }
                }
                Text("You select \(obeserveC.cars[obeserveC.selection].cartitle)")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(1)
                .padding(.leading)
                ScrollView {
    //                Text("My garage")
    //                    .font(.title)
    //                    .fontWeight(.black)
    //                    .foregroundColor(.primary)
    //                    .lineLimit(1)
    //                    .padding(.leading)
                    VStack {
                        ForEach(Array(obeserveC.cars.enumerated()), id: \.offset) { index, car in
                            garageCardView(id: index,image: car.image, cartitle:car.cartitle,totalExpense: car.totalExpense, fuelCom: car.getAvgFuelCom(), avgCost: car.avgCost)
                        }
                    }
                }
            }
        }
        .padding(.top, 0)
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    func update() {
        print("update")
        temp = c.cars
        temp.shuffle()
    }
}

struct garageView_Previews: PreviewProvider {
    static var previews: some View {
        garageView(id: 0)
    }
}

struct AddCarButtonContent : View {
    var body: some View {
        return Text("Add a new car")
            .font(.headline)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 350, height: 40)
            .background(.white)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 1)
            )
    }
}
