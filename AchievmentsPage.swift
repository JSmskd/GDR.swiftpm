//
//  AchievmentsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct AchievmentsPage: View {
    @Binding var money: MoneyClass
    var body: some View {
        HStack{
            
            MenuSelectionSubview(money: $money)
            Spacer()
            VStack{
                Text("Achievments")
                HStack{
                    
                    
                    ///////////////////////////////////////////////////////////////////// Achievment Titles
                    VStack{
                        Text("Total Cactus Jumped Over")
                        Text("Total Gold Collected")
                        Text("Total Meteors Collected")
                        Text("Total Completed Quests")
                    }
                    ////////////////////////////////////////////////////////////////////// Divider
                    VStack{
                        Text("|")
                        Text("|")
                        Text("|")
                        Text("|")
                    }
                    ////////////////////////////////////////////////////////////////////// Achievment Trackers
                    VStack{
                        Text("\(money.jumpOverCactusTotal, specifier: "%.0f")")
                        Text("\(money.goldTotal, specifier: "%.0f")")
                        Text("\(money.meteorTotal, specifier: "%.0f")")
                        Text("\(money.completedQuestsTotal, specifier: "%.0f")")
                        
                    }}
            }
            Spacer()
            
            
            
        }
    }
}

