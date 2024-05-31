//
//  InventoryPage.swift
//  GDR
//
//  Created by Evan Gross on 5/15/24.
//

import SwiftUI

struct InventoryPage: View {
    @ObservedObject var money: MoneyClass
    let id = UUID()
    var body: some View {
        HStack{
            MenuSelectionSubview(money: money)
            
            Spacer()
            LazyVStack(alignment: .center){
                Text("Equipment")
                HStack{
                    VStack{
                        Text("Equipped Weapon = \(money.playerWeapon.weaponName)")
                        ForEach(money.inventory){value in
                            Button(action: {
                                money.playerWeapon = value
                            }, label: {
                                Rectangle()
                                    .frame(maxWidth: 250, maxHeight: 250)
                                    .foregroundStyle(.brown)
                                    .overlay(
                                        Text("\(value.weaponName) \n Damage - \(value.weaponDamage, specifier: "%.0f") \n \(value.weaponDescription)")
                                            .foregroundStyle(.black)
                                    )
                            })
                            Button(action: {
                                money.gold += value.weaponSellValue
//                                money.inventory.remove()
                                //selling functionality will be added at a later date
                            }, label: {
                                Rectangle()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .foregroundStyle(.brown)
                                    .overlay(
                                        Text("Sell Item For \(value.weaponSellValue)")
                                            .foregroundStyle(.black))
                                    
                            }
                            )
                            
                            
                        }
                        
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


