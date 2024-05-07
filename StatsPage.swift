//
//  EquipmentPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct StatsPage: View {
    @Binding var money: MoneyClass
    var body: some View {
        
        HStack{
            MenuSelectionSubview(money: $money)
            Spacer()
            VStack{
                
                
                Text("Stats")
                HStack{
                    VStack{
                        Text("Gold")
                        Text("Meteors")
                        Text("Jump Height")
                        Text("Own Jetpack")
                        
                    }
                    VStack{
                        Text("|")
                        Text("|")
                        Text("|")
                        Text("|")
                        
                                    
                                        
                                    
                                }
                        
                        
                    }
                    VStack{
                        Text("\(money.gold, specifier: "%.0f")")
                        Text("\(money.meteor, specifier: "%.0f")")
                        Text("\(money.jumpHeight, specifier: "%.0f")")
                        Text("\(String(money.jetpack))")
                        
                    }
                    
                }
                
            }
            Spacer()
            
        }
    }


