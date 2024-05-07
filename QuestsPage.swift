//
//  QuestsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct QuestsPage: View {
    @Binding var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: $money)
            Spacer()
            VStack{
                
                
                Text("Quests")
                MoneySubview(money: $money)
                
                Button(action:
                                        {
                                    money.gold += 75
                                    money.meteor += 50
                                    
                                          }, label: {
                                              Text("Money tester (+75 gold, +50 meteor)")
                                                  .frame(maxWidth: 300, alignment: .leading)
                                              
                                          })
            }
            Spacer()
            
            
            
            
            
            
        }
    }
}

