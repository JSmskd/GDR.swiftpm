//
//  InventoryPage.swift
//  GDR
//
//  Created by Evan Gross on 5/15/24.
//

import SwiftUI

struct InventoryPage: View {
    @Binding var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: $money)
            
            Spacer()
            VStack{
                ForEach(money.inventory, id:\.self){value in
                    Button(action: {
                        money.playerWeapon = value
                    }, label: {
                        Rectangle()
                            .frame(maxWidth: 100, maxHeight: 100)
                            .overlay(
                                Text("\(value)")
                            )
                    })}
                    
                    
                    
                    
                    
                    
             
                
                
                
            }
            
            
            Spacer()
        }
    }
}

