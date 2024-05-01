//
//  StorePage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct StorePage: View {
    @Binding var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: $money)
            Spacer()
            VStack{
                Button(action:
                        {
                    money.gold -= 50
                    money.jumpHeight += 1
                          }, label: {
                              Rectangle()
                                .foregroundStyle(.brown)
                                .overlay(
                              Text("Jump Height +1\n 50 Gold")
                                  .frame(maxWidth: 300, alignment: .leading)
                                  )
                          })
                Button(action:
                        {
                    money.meteor -= 500
                    money.jetpack = true
                          }, label: {
                              Rectangle()
                                .foregroundStyle(.brown)
                                .overlay(
                              Text("Jetpack\n 500 Meteors")
                                  .frame(maxWidth: 300, alignment: .leading)
                                  )
                          })
                
                
                Text("Store")
                MoneySubview(money: $money)
            }
            
            
            Spacer()
            
            
            
        }
    }
}

