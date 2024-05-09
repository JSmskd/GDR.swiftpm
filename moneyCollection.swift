//
//  SwiftUIView.swift
//  GDR
//
//  Created by Evan Gross on 4/29/24.
//

import SwiftUI

class MoneyClass{
    //Currencies
    var gold: Double
    var meteor: Double
    //PlayerStats
    var jumpHeight: Double
    var jetpack: Bool
    var maxHealth: Double
    //StorePrices
    var priceJump: Double
    var priceJetpack: Double
    var priceJetpackSoldout: String
    //QuestProgress
    var jumpOverCactusQuest: Double
    var jumpOverCactusQuestProgression: Double
    var defeatMonsterQuest: Double
    //QuestRewards
    var cactusQuestReward: Double
    var defeatMonsterQuestReward: Double
    //Achievments
    var completedQuestsTotal: Double
    var goldTotal: Double
    var goldSpentTotal: Double
    var meteorTotal: Double
    var meteorSpentTotal: Double
    var jumpOverCactusTotal: Double
    var defeatMonstersTotal: Double
    
    
    
    
    init() {
        //Currencies
        gold = 50.00
        meteor = 5.00
        //PlayerStats
        jumpHeight = 10.00
        jetpack = false
        maxHealth = 1
        //StorePrices
        priceJump = 55.00
        priceJetpack = 500
        priceJetpackSoldout = "Jetpack\n 500 Meteors"
        //QuestProgress
        jumpOverCactusQuest = 10
        jumpOverCactusQuestProgression = 10
        defeatMonsterQuest = 3
        //QuestRewards
        cactusQuestReward = 30
        defeatMonsterQuestReward = 1
        //Achievments
        completedQuestsTotal = 0
        goldTotal = 50
        goldSpentTotal = 0
        meteorTotal = 5
        meteorSpentTotal = 0
        jumpOverCactusTotal = 0
        defeatMonstersTotal = 0
        
        
    }
}


