//
//  HouseDetail.swift
//  Assignment3
//
//  Created by Laurel Walker Davis on 3/20/23.
//

import SwiftUI

struct HouseDetail: View {
    
    var house : HousesModel
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text(house.name).font(.title)
                    Text("Founded by " + house.founder).font(.subheadline)
                }
                Spacer()
                VStack {
                    Text("Heads of House").font(.headline)
                    HeadView(heads: house.heads)
                }
                Spacer()
                VStack {
                    Text("House Details").font(.headline)
                    Text("House Colors: " + house.houseColours)
                    Text("Animal: " + house.animal)
                    Text("Element: " + house.element)
                    Text("Ghost: " + house.ghost)
                    Text("Common Room: " + house.commonRoom)
                }
                Spacer()
                VStack {
                    Text("Notable traits").font(.headline)
                    TraitsView(traits: house.traits)
                }
            }
        }
    }
}
//struct HouseDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        HouseDetail(house: house)
//    }
//}
