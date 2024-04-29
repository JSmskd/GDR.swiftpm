//
//  MoneySubview.swift
//  GDR
//
//  Created by Evan Gross on 4/29/24.
//

import SwiftUI

struct MoneySubview: View {
    @State var francGold =  50.00
    @State var francMeteor = 10.00
    
    var body: some View {
        
        HStack{
            Text("Gold = \(francGold, specifier: "%.0f")")
            Text("Meteors = \(francMeteor, specifier: "%.0f")")
            
            
        }
        
    }
}

