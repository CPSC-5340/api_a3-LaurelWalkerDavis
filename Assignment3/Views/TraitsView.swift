//
//  TraitView.swift
//  Assignment3
//
//  Created by Laurel Walker Davis on 3/21/23.
//

import SwiftUI

struct TraitsView: View {
    
    var traits : [TraitsModel]
    
    var body: some View {
            ForEach(traits) { traits in
                Text(traits.name)
            }        
    }
}


//struct TraitsView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        TraitsView(traits: [TraitsModel])
//    }
//}
