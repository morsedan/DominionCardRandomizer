//
//  dominionCardDeck.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/20/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Lines 10 - 33 set up data for Dominion deck.
let adventurer = Card(name: "Adventurer", cost: 6, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let bureaucrat = Card(name: "Bureaucrat", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: true, isAttack: true, isDefense: false, fromDeck: "Dominion")
let cellar = Card(name: "Cellar", cost: 2, plusCard: false, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let chancellor = Card(name: "Chancellor", cost: 3, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let chapel = Card(name: "Chapel", cost: 2, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let councilRoom = Card(name: "Council Room", cost: 5, plusCard: true, plusAction: false, plusBuy: true, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let feast = Card(name: "Feast", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Dominion")
let festival = Card(name: "Festival", cost: 5, plusCard: false, plusAction: true, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let laboratory = Card(name: "Laboratory", cost: 5, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let library = Card(name: "Library", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let market = Card(name: "Market", cost: 5, plusCard: true, plusAction: true, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let militia = Card(name: "Militia", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Dominion")
let mine = Card(name: "Mine", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Dominion")
let moat = Card(name: "Moat", cost: 2, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: true, fromDeck: "Dominion")
let moneylender = Card(name: "Moneylender", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: true, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let remodel = Card(name: "Remodel", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Dominion")
let smithy = Card(name: "Smithy", cost: 4, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let spy = Card(name: "Spy", cost: 4, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Dominion")
let thief = Card(name: "Thief", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: true, isAttack: true, isDefense: false, fromDeck: "Dominion")
let throneRoom = Card(name: "Throne Room", cost: 4, plusCard: false, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let village = Card(name: "Village", cost: 3, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let witch = Card(name: "Witch", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Dominion")
let woodcutter = Card(name: "Woodcutter", cost: 3, plusCard: false, plusAction: false, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Dominion")
let workshop = Card(name: "Workshop", cost: 3, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Dominion")

/// Adds all Dominion cards to dominionDeck.
let dominionDeck: Set<Card> = [adventurer, bureaucrat, cellar, chancellor, chapel, councilRoom, feast, festival, laboratory, library, market, militia, mine, moat, moneylender, remodel, smithy, spy, thief, throneRoom, village, witch, woodcutter, workshop]
