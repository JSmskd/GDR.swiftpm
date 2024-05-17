//
//  MenuSelectionSubview.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct MenuSelectionSubview: View {
    @Binding var money: MoneyClass
    var body: some View {
        
        ////////////////////////////////////////////////////////////////////////////----> Side Menu Code
        Rectangle()
            .frame(maxWidth: 225, maxHeight: .infinity)
        .foregroundStyle(.brown)
        .overlay(
        NavigationStack{
            VStack{
                
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Play"){
                    InfiniteRunnerGame(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Stats"){
                    StatsPage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Inventory"){
                    InventoryPage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Quests"){
                    QuestsPage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Store"){
                    StorePage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Achievments"){
                    AchievmentsPage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 200, maxHeight: 50)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Settings"){
                    SettingsPage(money: $money)
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
            }
        }
        ////////////////////////////////////////////////////////////////////////////----> Side Menu Code
        )
    }
        
        
}


