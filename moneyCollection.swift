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
    @Published var pullTheLeverKronk: Bool
    @Published var pointMultiplier: Double
    @Published var goldMultiplier: Double
    @Published var meteorBonus: Double
    //PlayerItems
    @Published var playerWeapon: weaponStats
    @Published var playerArmor: String
    @Published var playerTrinket: String
    //PlayerInventory
    @Published var inventory: [weaponStats]
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
    //Items in the game
    @Published var itemsWeapons: [weaponStats]
    //John's special corner

    @Published var ded = true
    @Published var goldGained:Double
    @Published var cactiJumped:Double
    @Published var userName = "Player\(Int.random(in: 0...9))\(Int.random(in: 0...9))\(Int.random(in: 0...9))\(Int.random(in: 0...9))"

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
        pullTheLeverKronk = false
        pointMultiplier = 1
        goldMultiplier = 1
        meteorBonus = 0
        //PlayerItems
        playerWeapon = weaponStats(weaponName: "None", weaponDamage: 0.0, weaponDescription: "Nothing But Fists And Anger")
        playerArmor = "None"
        playerTrinket = "None"
        //PlayerInventory
        inventory = []
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
        //Items in the game
        itemsWeapons = [
            weaponStats(weaponName:"Wooden Club", weaponDamage: 1.0, weaponDescription: "Basic Weapon"),
            weaponStats(weaponName:"Needlethorn Club",weaponDamage: 2.0,weaponDescription: "Youch!",armorPierce: 1),
            weaponStats(weaponName:"Sledgehammer",weaponDamage: 4.0,weaponDescription: "Bulky Hammer Increase Health",health: 4)
                       
        ]
        

        self.goldGained = 0
        self.cactiJumped = 0
    }
}
//        achievments["Total Gold Obtained"]? += 1

//////////////////////// formatter
class weaponStats: Identifiable{
    var id = UUID()
    var weaponName: String
    var weaponDamage: Double
    var weaponDescription: String
    var armorPierce: Double?
    var health: Double?
    init(weaponName: String, weaponDamage:Double, weaponDescription:String){
        self.weaponName = weaponName
        self.weaponDamage = weaponDamage
        self.weaponDescription = weaponDescription
    }
    init(weaponName: String, weaponDamage:Double, weaponDescription:String, armorPierce: Double){
        self.weaponName = weaponName
        self.weaponDamage = weaponDamage
        self.weaponDescription = weaponDescription
        self.armorPierce = armorPierce
    }
    init(weaponName: String, weaponDamage:Double, weaponDescription:String, health: Double){
        self.weaponName = weaponName
        self.weaponDamage = weaponDamage
        self.weaponDescription = weaponDescription
        self.health = health
    }
}

