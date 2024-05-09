//
//  QuestsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct QuestsPage: View {
    
    @State var questCompleteAlert = false
  
    @Binding var money: MoneyClass
    var body: some View {
        HStack{
            MenuSelectionSubview(money: $money)
            
            Spacer()
            VStack{
                
                
                
                Text("Quests")
                HStack{
                    Text("Gold = \(money.gold, specifier: "%.0f")")
                    Text("Meteors = \(money.meteor, specifier: "%.0f")")
                }
                
                
                Button(action:
                                        {
                                    money.gold += 500
                                    money.meteor += 250
                                    questCompleteAlert = true
                                    money.jumpOverCactusQuest -= 3
                                    money.jumpOverCactusTotal += 3
                                          }, label: {
                                              Text("Money tester (+500 gold, +250 meteor) also 3 jump")
                                                  .frame(maxWidth: 300, alignment: .leading)
                                          })
                ////////////////////////////////////////////////////////////// Quest 1
                Button(action:
                                        {
                    if money.jumpOverCactusQuest <= 0{
                        money.gold += money.cactusQuestReward
                        money.cactusQuestReward *= 1.1
                        money.jumpOverCactusQuestProgression *= 1.1
                        money.jumpOverCactusQuest = money.jumpOverCactusQuestProgression
                        money.completedQuestsTotal += 1
                        questCompleteAlert = true
                    }else{
                        
                    }
                                          }, label: {
                                              Rectangle()
                                                  .frame(maxWidth: 100, maxHeight: 100)
                                                  .foregroundStyle(.brown)
                                                  .overlay(
                                                    VStack{
                                                        
                                                        
                                                        Text("Jump Over \(money.jumpOverCactusQuest, specifier: "%.0f") Cactus")
                                                            .frame(maxWidth: 300, alignment: .leading)
                                                        Text("Reward")
                                                        Text("\(money.cactusQuestReward, specifier: "%.0f") Gold")
                                                        
                                                        
                                                    }
                                          )})
                ////////////////////////////////////////////////////////////// Quest 2
                Button(action:
                                        {
                    if money.defeatMonsterQuest <= 0{
                        money.gold += 50000
                        money.meteor += 25000
                        money.defeatMonsterQuest = 3
                        questCompleteAlert = true
                    }else{
                        
                    }
                                          }, label: {
                                              Rectangle()
                                                  .frame(maxWidth: 100, maxHeight: 100)
                                                  .foregroundStyle(.brown)
                                                  .overlay(
                                              Text("Defeat \(money.defeatMonsterQuest, specifier: "%.0f") Monsters")
                                                  .frame(maxWidth: 300, alignment: .leading)
                                          )})

                
                
                
            }
            .alert("You Completed A Quest!", isPresented: $questCompleteAlert){
                Button("Thats Crazy!", role: .cancel){}}
            Spacer()
            
            
                
            
            
            
        }
    }
}

