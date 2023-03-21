//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Houses: View {
    
    @ObservedObject var housesVM = HousesViewModel()
    
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Image("hogwarts")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                NavigationStack {
                    List {
                        ForEach(housesVM.housesData) {
                            hogHouse in
                            NavigationLink {
                                HouseDetail(house: hogHouse)
                            } label: {
                                Text(hogHouse.name)
                            }
                        }
                    }
                    .task {
                        await housesVM.fetchData()
                    }
                    .navigationTitle("Hogwarts Houses")
                    .alert(isPresented: $housesVM.hasError, error: housesVM.error) {
                        Text("")
                    } // .alert addresses error handling
                }
            }
        }
    }
}

struct Houses_Previews: PreviewProvider {
    static var previews: some View {
        Houses()
    }
}
