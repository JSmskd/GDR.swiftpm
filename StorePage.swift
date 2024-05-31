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
    @State var lootboxAlert = false
    @State var lootboxResult = 0
    @State var lootboxBasicWeapon: [Int] = [0,0,0,1,2,3]
    
    ///
    @ObservedObject var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: money)
            Spacer()
            VStack{
                VStack{
                    Text("Store")
                    HStack{
                        Text("Gold = \(money.gold, specifier: "%.0f")")
                        Text("Meteors = \(money.meteor, specifier: "%.0f")")
                    }
                }
                .frame(minWidth: 100, maxWidth:.infinity, maxHeight:50)
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
                    //////////////////////////////////////////////////// LOOTBOX CODE = basic
                Button(action:
                        {
                    if money.gold >= 250 {
                        money.gold -= 250
                        lootboxResult = lootboxBasicWeapon.randomElement()!
                        //money.inventory.append(lootboxResult)
                            //This comment line fixed a error for some reason, pls dont remove
                        lootboxAlert = true
                    }else{
                        noMoneyAlertGold = true                       }
                }, label: {
                    Rectangle()
                        .frame(maxWidth: 300, maxHeight: 200)
                        .foregroundStyle(.brown)
                        .overlay(
                            Text("Weapon Lootbox")
                                .frame(maxWidth: 300, alignment: .center)
                        )
                })
                    /////////////////////////////////////// ALERTS
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
                    .alert("You Opened A Lootbox! It Contained \(money.itemsWeapons[lootboxResult].weaponName)", isPresented: $lootboxAlert){
                        Button("Thats Crazy!", role: .cancel){}}


            Spacer()



        }
    }
}
