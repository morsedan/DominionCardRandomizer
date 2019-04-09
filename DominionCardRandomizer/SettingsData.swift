//
//  SettingsData.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/23/19.
//  Copyright © 2019 morse. All rights reserved.
//

var prosperitySwitch: Bool = false
var intrigueSwitch: Bool = false

var plusCardSwitch: Bool = false
var plusActionSwitch: Bool = false
var plusBuySwitch: Bool = false
var plusCoinSwitch: Bool = false
var trashCardSwitch: Bool = false
var gainCardSwitch: Bool = false
var isAttackSwitch: Bool = true
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

