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
    var maxHealth: Double
    var maxMana: Double
    var jumpHeight: Double
    var jetpack: Bool
    var pointMultiplier: Double
    var goldMultiplier: Double
    var meteorBonus: Double
    //StorePrices
    var priceJump: Double
    var priceJetpack: Double
    var priceJetpackSoldout: String
    //QuestProgress
    var jumpOverCactusQuest: Double
    var jumpOverCactusQuestProgression: Double
    var defeatMonsterQuest: Double
    //QuestReward
    var cactusQuestReward: Double
    var defeatMonsterQuestReward: Double
    //Achievments
    var achievments: [String: Double]


    init() {
        //Currencies
        gold = 50.00
        meteor = 5.00
        //PlayerStats
        maxHealth = 1
        maxMana = 100
        jumpHeight = 10.00
        jetpack = false
        pointMultiplier = 1
        goldMultiplier = 1
        meteorBonus = 0
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
        achievments = ["Completed Quests":0, "Total Gold Obtained":50, "Total Gold Spent":0, "Total Meteor Obtained":5, "Total Meteor Spent":0, "Cactus Jumped Over":0, "Monsters Defeated":0]
        
        

    }
}
//        achievments["Total Gold Obtained"]? += 1


