//
//  SwiftUIView.swift
//  GDR
//
//  Created by Evan Gross on 4/29/24.
//

import SwiftUI

class MoneyClass{
    //Currencies
    var gold: Double
    var meteor: Double
    //PlayerStats
    var jumpHeight: Double
    var jetpack: Bool
    //StorePrices
    var priceJump: Double
    var priceJetpack: Double
    var priceJetpackSoldout: String
    
    
    init() {
        //Currencies
        gold = 50.00
        meteor = 5.00
        //PlayerStats
        jumpHeight = 10.00
        jetpack = false
        //StorePrices
        priceJump = 55.00
        priceJetpack = 500
        priceJetpackSoldout = "Jetpack\n 500 Meteors"
        
    }
}


