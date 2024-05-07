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
        Text("Store")
        MoneySubview(money: $money)
        HStack{
                    MenuSelectionSubview(money: $money)
                    Spacer()
                    VStack{
                        Button(action:
                                {
                            if money.gold >= money.priceJump {
                                money.gold -= 50
                                money.jumpHeight += 1
                                money.priceJump *= 1.05
                            }else{
                                print("come back when your a little RICHER")
                            }
                                  }, label: {
                                      Rectangle()
                                        .frame(maxWidth: 300, maxHeight: 200)
                                        .foregroundStyle(.brown)
                                        .overlay(
                                            Text("Jump Height +1\n \(money.priceJump, specifier: "%.0f") Gold")
                                                .frame(maxWidth: 300, alignment: .center)
                                          )
                                  })
                        Button(action:
                                {
                            
                            if money.priceJetpackSoldout == "Sold Out!" {
                                print("jetpack is Sold Out!")
                                
                            }else if money.meteor >= money.priceJetpack {
                                money.meteor -= 500
                                money.jetpack = true
                                money.priceJetpack = 9999999
                                money.priceJetpackSoldout = "Sold Out!"
                            }else{
                                print("no money?")
                            }
                            
                                  }, label: {
                                      Rectangle()
                                        .frame(maxWidth: 300, maxHeight: 200)
                                        .foregroundStyle(.brown)
                                        .overlay(
                                            Text("\(money.priceJetpackSoldout)")
                                          .frame(maxWidth: 300, alignment: .center)
                                          )
                                  })
                        
                        
                        
            }
            
            
            Spacer()
            
            
            
        }
    }
}

