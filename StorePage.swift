//
//  StorePage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct StorePage: View {
    /// Alerts
    @State var noMoneyAlertGold = false
    @State var noMoneyAlertMeteor = false
    @State var noMoneyAlertStock = false
    @State var commonPurchase = false
    @State var epicPurchase = false
    
    ///
    @Binding var money: MoneyClass
    var body: some View {
        Text("Store")
        HStack{
            Text("Gold = \(money.gold, specifier: "%.0f")")
            Text("Meteors = \(money.meteor, specifier: "%.0f")") 
        }
        HStack{
                    MenuSelectionSubview(money: $money)
                    Spacer()
                    VStack{
                        Button(action:
                                {
                            if money.gold >= money.priceJump {
                                money.gold -= money.priceJump
                                money.achievments["Total Gold Spent"]? += money.priceJump
                                money.jumpHeight += 1
                                money.priceJump *= 1.35
                                commonPurchase = true
                            }else{
                                noMoneyAlertGold = true
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
                                noMoneyAlertStock = true
                                
                            }else if money.meteor >= money.priceJetpack {
                                money.meteor -= 500
                                money.achievments["Total Meteor Spent"]? += 500
                                money.jetpack = true
                                money.priceJetpack = 9999999
                                money.priceJetpackSoldout = "Sold Out!"
                                epicPurchase = true
                            }else{

                                noMoneyAlertMeteor = true                       }
                            
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
                    .alert("You Don't Have Enough Gold!", isPresented: $noMoneyAlertGold){
                        Button("Thats Crazy!", role: .cancel){}}
                    .alert("You Unlocked A Common Upgrade!", isPresented: $commonPurchase){
                        Button("Thats Crazy!", role: .cancel){}}
                    .alert("You Don't Have Enough Meteors!", isPresented: $noMoneyAlertMeteor){
                        Button("Thats Crazy!", role: .cancel){}}
                    .alert("There Isn't Any Stock Left!", isPresented: $noMoneyAlertStock){
                        Button("Thats Crazy!", role: .cancel){}}
                    .alert("You Unlocked A Epic Upgrade!", isPresented: $epicPurchase){
                        Button("Thats Crazy!", role: .cancel){}}
            
            
            Spacer()
            
            
            
        }
    }
}

