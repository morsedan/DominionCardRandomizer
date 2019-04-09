//
//  intrigueCardDeck.swift
//  DominionCardRandomizer
//
//  Created by morse on 4/9/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Lines 10 - 34 set up data for Intrigue deck.
let baron = Card(name: "Baron", cost: 4, plusCard: false, plusAction: false, plusBuy: true, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let bridge = Card(name: "Bridge", cost: 4, plusCard: false, plusAction: false, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let conspirator = Card(name: "Conspirator", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let courtier = Card(name: "Courtier", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let courtyard = Card(name: "Courtyard", cost: 2, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let diplomat = Card(name: "Diplomat", cost: 4, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: true, fromDeck: "Intrigue")
let duke = Card(name: "Duke", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let harem = Card(name: "Harem", cost: 6, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let ironworks = Card(name: "Ironworks", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let lurker = Card(name: "Lurker", cost: 2, plusCard: false, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let masquerade = Card(name: "Masquerade", cost: 3, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let mill = Card(name: "Mill", cost: 4, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let miningVillage = Card(name: "Mining Village", cost: 4, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let minion = Card(name: "Minion", cost: 5, plusCard: false, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Intrigue")
let nobles = Card(name: "Nobles", cost: 6, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let patrol = Card(name: "Patrol", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let pawn = Card(name: "Pawn", cost: 2, plusCard: true, plusAction: true, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let replace = Card(name: "Replace", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: true, isDefense: false, fromDeck: "Intrigue")
let secretPassage = Card(name: "Secret Passage", cost: 4, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let shantyTown = Card(name: "Shanty Town", cost: 3, plusCard: false, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let steward = Card(name: "Steward", cost: 3, plusCard: true, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: true, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let swindler = Card(name: "Swindler", cost: 3, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let torturer = Card(name: "Torturer", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Intrigue")
let tradingPost = Card(name: "Trading Post", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let upgrade = Card(name: "Upgrade", cost: 5, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Intrigue")
let wishingWell = Card(name: "Wishing Well", cost: 3, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Intrigue")

let intrigueDeck: Set<Card> = [baron, bridge, conspirator, courtier, courtyard, diplomat, duke, harem, ironworks, lurker, masquerade, mill, miningVillage, minion, nobles, patrol, pawn, replace, secretPassage, shantyTown, steward, swindler, torturer, tradingPost, upgrade, wishingWell]
