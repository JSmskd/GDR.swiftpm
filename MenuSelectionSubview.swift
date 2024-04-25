//
//  MenuSelectionSubview.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct MenuSelectionSubview: View {
    var body: some View {
        
        ////////////////////////////////////////////////////////////////////////////----> Side Menu Code
        NavigationStack{
            VStack{
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Play"){
                    InfiniteRunnerGame()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Stats"){
                    StatsPage()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Quests"){
                    QuestsPage()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Store"){
                    StorePage()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Achievments"){
                    AchievmentsPage()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                NavigationLink("Settings"){
                    SettingsPage()
                        .navigationBarBackButtonHidden(true)
                }
                    .foregroundStyle(.white))
                ////////////////////////////////////////////////////////////
            }
        }
        ////////////////////////////////////////////////////////////////////////////----> Side Menu Code
    }
}


