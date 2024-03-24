//
//  HomeScreen.swift
//  Assignment2
//
//  Created by user250993 on 3/22/24.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel = HomeViewModel()
    
    let options = [
        "World Currency Exchange",
        "Crypto Exchange",
    ]
    
    var body: some View {
        NavigationView {
            List(options, id: \.self) { option in
                NavigationLink(destination: destinationForOption(option)) {
                    Text(option)
                }
            }
            .navigationTitle("Conversion App")
            .navigationBarTitleDisplayMode(.large)
            .onChange(of: viewModel.selectedDestination) { destination in
                if let destination = destination {
                    navigate(to: destination)
                }
            }
        }
        .environmentObject(viewModel)
    }
    
    @ViewBuilder
    func destinationForOption(_ option: String) -> some View {
        switch option {
        case "World Currency Exchange":
            WorldCurrencyExchangeView()	
        case "Crypto Exchange":
            CryptoExchangeView()
        default:
            EmptyView()
        }
    }
    
    func navigate(to destination: HomeViewModel.Destination) {
        switch destination {
        case .worldCurrencyExchange:
            print("Navigating to World Currency Exchange View")
        case .cryptoExchange:
            print("Navigating to Crypto Exchange View")
        }
    }
}

#Preview {
    HomeScreen()
}

