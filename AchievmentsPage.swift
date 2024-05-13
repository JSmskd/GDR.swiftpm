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
                        ForEach(Array(money.achievments), id:\.key){ key, value in
                            Text("\(key)")
                        }
                    }
                    ////////////////////////////////////////////////////////////////////// Divider
                    VStack{
                        ForEach(Array(money.achievments), id:\.key){ key, value in
                            Text("|")
                        }
                    }
                    ////////////////////////////////////////////////////////////////////// Achievment Trackers
                    VStack{
                        ForEach(Array(money.achievments), id:\.key){ key, value in
                            Text("\(value, specifier: "%.0f")")
                        }
                        
                        
                    }}
            }
            Spacer()
            
            
            
        }
    }
}

