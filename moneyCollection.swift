//
//  SwiftUIView.swift
//  GDR
//
//  Created by Evan Gross on 4/29/24.
//

import SwiftUI


class MoneyClass:ObservableObject, Identifiable {
var  id = UUID()
    //Currencies
    @Published var gold: Double
    @Published var meteor: Double
    //PlayerStats
    @Published var maxHealth: Double
    @Published var maxMana: Double
    @Published var jumpHeight: Double
    @Published var jetpack: Bool
    @Published var kevinKishore: Bool
    @Published var pointMultiplier: Double
    @Published var goldMultiplier: Double
    @Published var meteorBonus: Double
    //PlayerItems
    @Published var playerWeapon: String
    @Published var playerArmor: String
    @Published var playerTrinket: String
    //PlayerInventory
    @Published var inventory: [String]
    @Published var inventoryArmor: [String]
    @Published var inventoryTrinket: [String]
    //StorePrices
    @Published var priceJump: Double
    @Published var priceJetpack: Double
    @Published var priceJetpackSoldout: String
    //QuestProgress
    @Published var jumpOverCactusQuest: Double
    @Published var jumpOverCactusQuestProgression: Double
    @Published var defeatMonsterQuest: Double
    //QuestReward
    @Published var cactusQuestReward: Double
    @Published var defeatMonsterQuestReward: Double
    //Achievments
    @Published var achievments: [String: Double]
    
    //John's special corner

    @Published var ded = true
    @Published var goldGained:Double
    @Published var cactiJumped:Double
    
    init() {
        //Currencies
        gold = 50.00
        meteor = 5.00
        //PlayerStats
        maxHealth = 1
        maxMana = 100
        jumpHeight = 10.00
        jetpack = false
        kevinKishore = false
        pointMultiplier = 1
        goldMultiplier = 1
        meteorBonus = 0
        //PlayerItems
        playerWeapon = "None"
        playerArmor = "None"
        playerTrinket = "None"
        //PlayerInventory
        inventory = [""]
        inventoryArmor = [""]
        inventoryTrinket = [""]
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
        self.goldGained = 0
        self.cactiJumped = 0
    }
}

//sc(name:"plip",description:"bloop", defence:1.0)
//sc(name:"chad",description:"coool", damage:1.0)
//class sc:Identifiable{
//    @Published var id = UUID()
//    @Published var name:String
//    @Published var description:String
//    @Published var defence:Double?
//    @Published var damage:Double?
//    
//    init(name: String, description: String, defence:Double) {
//        self.name = name
//        self.description = description
//        self.defence = defence
//    }
//    init(name: String, description: String, damage:Double) {
//        self.name = name
//        self.description = description
//        self.defence = damage
//    }
//}
