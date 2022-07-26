//
//  garageCardView.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI

struct garageCardView: View {
    var id: Int
    var image: String
    var cartitle: String
    var totalExpense: Int
    var fuelCom: Double
    var avgCost: Double
    var body: some View {
        VStack {
            HStack{
                Text("\(id): \(cartitle)")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width: 380, height: 25, alignment: .leading)
                    .multilineTextAlignment(.leading)
                Button(action: {update(id:id)}) {
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
            HStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
             
                HStack {
                    VStack(alignment: .leading) {
                        Text("Total Expenses:")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("$\(totalExpense)")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        Text("Fuel Comsumption:")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("\(fuelCom)l/km")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                        Text("Average Cost:")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("$\(avgCost)/km")
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                            .padding(.leading)
                    }
                    .layoutPriority(100)
             
                    Spacer()
                }
                .padding()
            }
        }.padding(15)
            .frame(alignment: .center)
    }
    
    func update(id: Int) {
        c.selection = id
        print("car selection id is: \(c.selection)")
    }
}

struct garageCardView_Previews: PreviewProvider {
    static var previews: some View {
        garageCardView(id: 0, image: "carlogs", cartitle:"2013 Audi Q7",totalExpense: 4500, fuelCom: 15, avgCost: 0.05)
    }
}
