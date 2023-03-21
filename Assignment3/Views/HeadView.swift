//
//  HeadView.swift
//  Assignment3
//
//  Created by Laurel Walker Davis on 3/21/23.
//

import SwiftUI

struct HeadView: View {
    
    var heads : [HeadModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(heads) { head in
                HStack {
                    Text(head.firstName)
                    Text(head.lastName)                    
                }
            }
        }
    }
}


//struct HeadView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeadView()
//    }
//}
