//
//  HousesViewModel.swift
//  Assignment3
//
//  Created by Laurel Walker Davis on 3/20/23.
//

import Foundation

class HousesViewModel : ObservableObject {
    
    @Published private(set) var housesData = [HousesModel]()
    @Published var hasError = false
    @Published var error : HousesModelError?
    private let url = "https://wizard-world-api.herokuapp.com/Houses"
    
    @MainActor // run on main thread
    func fetchData() async {
        if let url = URL(string: url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let results = try JSONDecoder().decode([HousesModel]?.self, from: data) else {
                    self.hasError.toggle()
                    self.error = HousesModelError.decodeError
                    return
                }
                self.housesData = results
            } catch {
                self.hasError.toggle()
                self.error = HousesModelError.customError(error: error)
            }
        }
    }
}

extension HousesViewModel {
    enum HousesModelError : LocalizedError {
        case decodeError
        case customError(error: Error)
        
        var errorDescription: String? {
            switch self {
            case .decodeError:
                return "Error while decoding"
            case .customError(let error):
                return error.localizedDescription
            }
        }
    }
}
