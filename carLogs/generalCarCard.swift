//
//  generalCarCard.swift
//  carLogs
//
//  Created by Shawn on 2022-07-22.
//

import SwiftUI

struct generalCarCard: View {
    var image: String
    var cartitle:String
    var body: some View {
    VStack {
        Text(cartitle)
            .font(.title)
            .foregroundColor(.black)
            .frame(width: 380, height: 25, alignment: .leading)
            .multilineTextAlignment(.leading)
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }.padding(15)
        .frame(alignment: .center)
    }
}

struct generalCarCard_Previews: PreviewProvider {
    static var previews: some View {
        generalCarCard(image: "carlogs", cartitle: "Default")
    }
}
