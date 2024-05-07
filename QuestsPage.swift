//
//  QuestsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct QuestsPage: View {
    
    @State var questCompleteAlert = false
  
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
                                    money.gold += 500
                                    money.meteor += 250
                                    questCompleteAlert = true
                                          }, label: {
                                              Text("Money tester (+500 gold, +250 meteor)")
                                                  .frame(maxWidth: 300, alignment: .leading)
                                          })
                
                
            }
            .alert("You Completed A Quest!", isPresented: $questCompleteAlert){
                Button("Thats Crazy!", role: .cancel){}}
            Spacer()
            
            
                
            
            
            
        }
    }
}

