//
//  prosperityCardDeck.swift
//  DominionCardRandomizer
//
//  Created by morse on 3/17/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Lines 10 - 34 set up data for Prosperity deck.
let bank = Card(name: "Bank", cost: 7, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let bishop = Card(name: "Bishop", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: true, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let contraband = Card(name: "Contraband", cost: 5, plusCard: false, plusAction: false, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let city = Card(name: "City", cost: 5, plusCard: true, plusAction: true, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let countingHouse = Card(name: "Counting House", cost: 5  , plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let expand = Card(name: "Expand", cost: 7, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let forge = Card(name: "Forge", cost: 7, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: true, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let goons = Card(name: "Goons", cost: 6, plusCard: false, plusAction: false, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Prosperity")
let grandMarket = Card(name: "Grand Market", cost: 6, plusCard: true, plusAction: true, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let hoard = Card(name: "Hoard", cost: 6, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let kingsCourt = Card(name: "King's Court", cost: 7, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let loan = Card(name: "Loan", cost: 3, plusCard: true, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let mint = Card(name: "Mint", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: true, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let monument = Card(name: "Monument", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let mountebank = Card(name: "Mountebank", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Prosperity")
let peddler = Card(name: "Peddler", cost: 8, plusCard: true, plusAction: true, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let quarry = Card(name: "Quarry", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let rabble = Card(name: "Rabble", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: true, isDefense: false, fromDeck: "Prosperity")
let royalSeal = Card(name: "Royal Seal", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let talisman = Card(name: "Talisman", cost: 4, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let tradeRoute = Card(name: "Trade Route", cost: 3, plusCard: false, plusAction: false, plusBuy: true, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let vault = Card(name: "Vault", cost: 5, plusCard: true, plusAction: false, plusBuy: false, plusCoin: false, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let venture = Card(name: "Venture", cost: 5, plusCard: false, plusAction: false, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")
let watchtower = Card(name: "Watchtower", cost: 3, plusCard: true, plusAction: true, plusBuy: false, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: true, fromDeck: "Prosperity")
let workersVillage = Card(name: "Worker's Village", cost: 4, plusCard: true, plusAction: true, plusBuy: true, plusCoin: true, trashCardUpTo: false, gainCard: false, isAttack: false, isDefense: false, fromDeck: "Prosperity")

/// Add all Prosperity cards to prosperityDeck
let prosperityDeck: Set<Card> = [bank, bishop, contraband, city, countingHouse, expand, forge, goons, grandMarket, hoard, kingsCourt, loan, mint, monument, mountebank, peddler, quarry, rabble, royalSeal, talisman, tradeRoute, vault, venture, watchtower, workersVillage]
