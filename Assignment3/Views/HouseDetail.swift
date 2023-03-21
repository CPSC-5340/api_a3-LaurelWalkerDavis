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
            VStack(alignment: .leading) {
                Group {
                    Text(house.name)
                    Text("Founded by " + house.founder)
                    Text("Heads of House: ")
                    HeadView(heads: house.heads)
                }
                Group {
                    Text("House Colors: " + house.houseColours)
                    Text("Animal: " + house.animal)
                    Text("Element: " + house.element)
                    Text("Ghost: " + house.ghost)
                    Text("Common Room: " + house.commonRoom)
                }
                Text("Notable traits: ")
                TraitsView(traits: house.traits)
            }
        }
    }
}
//struct HouseDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        HouseDetail(house: house)
//    }
//}
