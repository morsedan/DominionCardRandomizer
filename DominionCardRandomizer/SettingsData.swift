//
//  SettingsData.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/23/19.
//  Copyright © 2019 morse. All rights reserved.
//

var prosperitySwitch: Bool = false
var plusCardSwitch: Bool = true//false
var plusActionSwitch: Bool = true//false
var plusBuySwitch: Bool = true//false
var plusCoinSwitch: Bool = true//false
var trashCardSwitch: Bool = true//false
var gainCardSwitch: Bool = true//false
var isAttackSwitch: Bool = false//true
var isDefenseSwitch: Bool = false

var twoMin = 1
var twoMax = 2
var threeMin = 1
var threeMax = 3
var fourMin = 2
var fourMax = 5
var fivePlusMin = 1
var fivePlusMax = 4
var cardAmounts = determineCardAmounts(twoRange: (twoMin, twoMax), threeRange: (threeMin, threeMax), fourRange: (fourMin, fourMax), fivePlusRange: (fivePlusMin, fivePlusMax))

