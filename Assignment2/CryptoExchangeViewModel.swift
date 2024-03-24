//
//  CryptoExchangeViewModel.swift
//  Assignment2
//
//  Created by user250993 on 3/22/24.
//

import Foundation

class CryptoExchangeViewModel: ObservableObject {
    @Published var bitCoinInput = "1"
    @Published var bitCoinValue: Double = 0.0
    
    init() {
        updateBitcoinValue()
    }
    
    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 1
        formatter.usesGroupingSeparator = false
        return formatter
    }()
    
    func updateBitcoinValue() {
        bitCoinValue = Double(bitCoinInput) ?? 0.0
    }
    
    func usdValue(index: Int) -> String {
        
        var amount = 0.0
        
        switch index {
        case 0:
            amount = bitCoinValue * 65084.70
        case 1:
            amount = bitCoinValue * 19.13
        case 2:
            amount = bitCoinValue * 23450.00
        case 3:
            amount = bitCoinValue * 77.2
        case 4:
            amount = bitCoinValue * 23454.0
        case 5:
            amount = bitCoinValue * 62113.0
        default:
            print("default")
        }
        
        let formattedValue = formatter.string(from: NSNumber(value: amount)) ?? "Invalid"
        
        return formattedValue
    }
}
