//
//  SettingsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct SettingsPage: View {
    @ObservedObject var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: money)
            Spacer()
            VStack{
                Text("Settings")
            }
            
            
            
        }
    }
}

