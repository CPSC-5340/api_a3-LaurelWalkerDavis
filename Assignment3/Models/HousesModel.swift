//
//  HousesModel.swift
//  Assignment3
//
//  Created by Laurel Walker Davis on 3/20/23.
//

import Foundation

struct HousesResults : Codable {
    let data : [HousesModel]
}

struct HousesModel : Codable, Identifiable {
    let id : String
    let name : String
    let houseColours : String
    let founder : String
    let animal : String
    let element : String
    let ghost : String
    let commonRoom : String
    let heads : [HeadModel]
    let traits : [TraitsModel]
}

