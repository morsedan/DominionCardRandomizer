//
//  CardTemplate.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/20/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Creates the template for a Card.
struct Card: Hashable {
    let name: String
    let cost: Int
    let plusCard: Bool
    let plusAction: Bool
    let plusBuy: Bool
    let plusCoin: Bool
    let trashCardUpTo: Bool
    let gainCard: Bool
    let isAttack: Bool
    let isDefense: Bool
    let fromDeck: String
}
