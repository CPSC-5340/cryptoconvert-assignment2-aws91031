//
//  HomeViewModel.swift
//  Assignment2
//
//  Created by user250993 on 3/22/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    enum Destination {
        case worldCurrencyExchange
        case cryptoExchange
    }
    
    @Published var selectedDestination: Destination?
    
    func navigate(to destination: Destination) {
        selectedDestination = destination
    }
}
