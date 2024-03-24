//
//  CryptoExchangeScreen.swift
//  Assignment2
//
//  Created by user250993 on 3/22/24.
//

import SwiftUI

struct CryptoExchangeView: View {
    
    @StateObject private var viewModel = CryptoExchangeViewModel()
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Bitcoin:")
                    TextField("Amount", text: $viewModel.bitCoinInput)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .onChange(of: viewModel.bitCoinInput, perform: { _ in
                            viewModel.updateBitcoinValue()
                        })
                }
            }
            
            Section {
                HStack {
                    Text("US Dollar")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 0))")
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("Ethereum")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 1))")
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("Tether")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 2))")
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("BNB")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 3))")
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("USD Coin")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 4))")
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("XRP")
                        .fontWeight(.medium)
                    Spacer()
                    Text("\(viewModel.usdValue(index: 5))")
                        .fontWeight(.regular)
                }
            }
        }.onTapGesture {
            self.endTextEditing()
      }
    }
}

#Preview {
    CryptoExchangeView()
}
