//
//  MenuSelectionSubview.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct MenuSelectionSubview: View {
 @ObservedObject var money: MoneyClass
    var body: some View {
        
        ////////////////////////////////////////////////////////////////////////////----> Side Menu Code

                
                    NavigationStack{
                        VStack{
                            
                            ////////////////////////////////////////////////////////////
                            
                            NavigationLink(destination: { 
                                InfiniteRunnerGame(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Play")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            
                            
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                StatsPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Stats")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                InventoryPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Inventory")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                QuestsPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Quests")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                StorePage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Store")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                AchievmentsPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Achievments")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                            NavigationLink(destination: { 
                                SettingsPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Settings")
                                    .frame(maxWidth: 200, maxHeight: 50)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                            ////////////////////////////////////////////////////////////
                        }
                    }
                    ////////////////////////////////////////////////////////////////////////////----> Side Menu Code
                    .frame(maxWidth: 225, maxHeight: .infinity)
                    .background(.brown)
    }
        
}


