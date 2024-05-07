//
//  MoneySubview.swift
//  GDR
//
//  Created by Evan Gross on 4/29/24.
//

import SwiftUI

struct MoneySubview: View {
    @Binding var money: MoneyClass

    
    var body: some View {
        
        HStack{
            Text("Gold = \(money.gold, specifier: "%.0f")")
            Text("Meteors = \(money.meteor, specifier: "%.0f")")
            
            
        }
        
    }
}

