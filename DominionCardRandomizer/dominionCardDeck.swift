//
//  dominionCardDeck.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/20/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Lines 10 - 33 set up data for Dominion deck.
let adventurer = Card(name: "Adventurer", cost: 6, plusCard: 2, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let bureaucrat = Card(name: "Bureaucrat", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 1, isAttack: true, isDefense: false, fromDeck: "Dominion")
let cellar = Card(name: "Cellar", cost: 2, plusCard: 0, plusAction: 1, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let chancellor = Card(name: "Chancellor", cost: 3, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 2, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let chapel = Card(name: "Chapel", cost: 2, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 4, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let councilRoom = Card(name: "Council Room", cost: 5, plusCard: 4, plusAction: 0, plusBuy: 1, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let feast = Card(name: "Feast", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 1, gainCard: 1, isAttack: false, isDefense: false, fromDeck: "Dominion")
let festival = Card(name: "Festival", cost: 5, plusCard: 0, plusAction: 2, plusBuy: 1, plusCoin: 2, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let laboratory = Card(name: "Laboratory", cost: 5, plusCard: 2, plusAction: 1, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let library = Card(name: "Library", cost: 5, plusCard: 2, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let market = Card(name: "Market", cost: 5, plusCard: 1, plusAction: 1, plusBuy: 1, plusCoin: 1, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let militia = Card(name: "Militia", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 2, trashCardUpTo: 0, gainCard: 0, isAttack: true, isDefense: false, fromDeck: "Dominion")
let mine = Card(name: "Mine", cost: 5, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 1, gainCard: 1, isAttack: false, isDefense: false, fromDeck: "Dominion")
let moat = Card(name: "Moat", cost: 2, plusCard: 2, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: true, fromDeck: "Dominion")
let moneylender = Card(name: "Moneylender", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 3, trashCardUpTo: 1, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let remodel = Card(name: "Remodel", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 1, gainCard: 1, isAttack: false, isDefense: false, fromDeck: "Dominion")
let smithy = Card(name: "Smithy", cost: 4, plusCard: 3, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let spy = Card(name: "Spy", cost: 4, plusCard: 1, plusAction: 1, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: true, isDefense: false, fromDeck: "Dominion")
let thief = Card(name: "Thief", cost: 4, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 1, isAttack: true, isDefense: false, fromDeck: "Dominion")
let throneRoom = Card(name: "Throne Room", cost: 4, plusCard: 0, plusAction: 1, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let village = Card(name: "Village", cost: 3, plusCard: 1, plusAction: 2, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let witch = Card(name: "Witch", cost: 5, plusCard: 2, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 0, isAttack: true, isDefense: false, fromDeck: "Dominion")
let woodcutter = Card(name: "Woodcutter", cost: 3, plusCard: 0, plusAction: 0, plusBuy: 1, plusCoin: 2, trashCardUpTo: 0, gainCard: 0, isAttack: false, isDefense: false, fromDeck: "Dominion")
let workshop = Card(name: "Workshop", cost: 3, plusCard: 0, plusAction: 0, plusBuy: 0, plusCoin: 0, trashCardUpTo: 0, gainCard: 1, isAttack: false, isDefense: false, fromDeck: "Dominion")

/// Adds all Dominion cards to dominionDeck.
let dominionDeck: Set<Card> = [adventurer, bureaucrat, cellar, chancellor, chapel, councilRoom, feast, festival, laboratory, library, market, militia, mine, moat, moneylender, remodel, smithy, spy, thief, throneRoom, village, witch, woodcutter, workshop]
