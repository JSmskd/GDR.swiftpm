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
    var kevinKishore: Bool
    var pointMultiplier: Double
    var goldMultiplier: Double
    var meteorBonus: Double
    //PlayerItems
    var playerWeapon: String
    var playerArmor: String
    var playerTrinket: String
    //PlayerInventory
    var inventory: [String]
    var inventoryArmor: [String]
    var inventoryTrinket: [String]
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
        
        

    }
}
//        achievments["Total Gold Obtained"]? += 1


class weaponStats: Identifiable{
    var weaponName: String
    var weaponDamage: Double
    var weaponDescription: String
    init(weaponName: String, weaponDamage:Double, weaponDescription:String){
        self.weaponName = ""
        self.weaponDamage = 0.0
        self.weaponDescription = ""
    }
}

class weapons: Identifiable{
    var woodenClub: weaponStats
    
    init(woodenClub: weaponStats) {
        self.woodenClub = weaponStats(weaponName:"Wooden Club", weaponDamage: 1.0, weaponDescription: "Hefty, Basic Weapon")
    }
}
