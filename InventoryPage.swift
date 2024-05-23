//
//  InventoryPage.swift
//  GDR
//
//  Created by Evan Gross on 5/15/24.
//

import SwiftUI

struct InventoryPage: View {
    @ObservedObject var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: money)
            
            Spacer()
            VStack{
                Text("Equipment")
                HStack{
                    VStack{
                        Text("Equipped Weapon = \(money.playerWeapon)")
                        ForEach(money.inventory, id:\.self){value in
                            Button(action: {
                                money.playerWeapon = value
                            }, label: {
                                Rectangle()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .foregroundStyle(.brown)
                                    .overlay(
                                        Text("\(value)")
                                            .foregroundStyle(.black)
                                    )
                            })}
                    }
                    VStack{
                        Text("Equipped Armor = \(money.playerArmor)")
                        ForEach(money.inventoryArmor, id:\.self){value in
                            Button(action: {
                                money.playerArmor = value
                            }, label: {
                                Rectangle()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .foregroundStyle(.brown)
                                    .overlay(
                                        Text("\(value)")
                                            .foregroundStyle(.black)
                                    )
                            })}
                    }
                    VStack{
                        Text("Equipped Trinket = \(money.playerTrinket)")
                        ForEach(money.inventoryTrinket, id:\.self){value in
                            Button(action: {
                                money.playerTrinket = value
                            }, label: {
                                Rectangle()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .foregroundStyle(.brown)
                                    .overlay(
                                        Text("\(value)")
                                            .foregroundStyle(.black)
                                    )
                            })}
                        
                    }
                }

                
                
            }
            Spacer()
        }
    }
}

