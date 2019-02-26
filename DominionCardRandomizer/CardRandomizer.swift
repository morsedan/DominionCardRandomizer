//
//  CardRandomizer.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//


var attackDeck = [Card]()
var defenseDeck = [Card]()
var costsTwoDeck = [Card]()
var costsThreeDeck = [Card]()
var costsFourDeck = [Card]()
var costsFivePlusDeck = [Card]()

var plusZeroCard = [Card]()
var plusOneCard = [Card]()
var plusMoreCard = [Card]()

var plusZeroAction = [Card]()
var plusOneAction = [Card]()
var plusMoreAction = [Card]()

var plusZeroBuy = [Card]()
var plusOneBuy = [Card]()

var plusZeroCoin = [Card]()
var plusOneCoin = [Card]()
var plusMoreCoin = [Card]()

var trashZeroCard = [Card]()
var trashOneCard = [Card]()
var trashMoreCard = [Card]()

var gainZeroCard = [Card]()
var gainMoreCard = [Card]()


func randomIndex(for group: [Any]) -> Int {
    return Int.random(in: 0..<group.count)
}


func categorizeCards(in deck: [Card]) {
    
    for card in deck {
        if card.isAttack {
            attackDeck.append(card)
        }
        if card.isDefense {
            defenseDeck.append(card)
        }
        switch card.cost {
        case 2: costsTwoDeck.append(card)
        case 3: costsThreeDeck.append(card)
        case 4: costsFourDeck.append(card)
        default: costsFivePlusDeck.append(card)
        }
        switch card.plusCard {
        case 0: plusZeroCard.append(card)
        case 1: plusOneCard.append(card)
        default: plusMoreCard.append(card)
        }
        switch card.plusAction {
        case 0: plusZeroAction.append(card)
        case 1: plusOneAction.append(card)
        default: plusMoreAction.append(card)
        }
        switch card.plusBuy {
        case 0: plusZeroBuy.append(card)
        default: plusOneBuy.append(card)
        }
        switch card.plusCoin {
        case 0: plusZeroCoin.append(card)
        case 1: plusOneCoin.append(card)
        default: plusMoreCoin.append(card)
        }
        switch card.trashCardUpTo {
        case 0: trashZeroCard.append(card)
        case 1: trashOneCard.append(card)
        default: trashMoreCard.append(card)
        }
        switch card.gainCard {
        case 0: gainZeroCard.append(card)
        default: gainMoreCard.append(card)
        }
    }
}


func createRandomDeck(from deck: [Card], with amount: Int) -> [String] {
    var playCards = [String]()
    for _ in 1...amount {
        var nextCard: String
        repeat {
            nextCard = deck[randomIndex(for: deck)].name
        } while playCards.contains(nextCard)
        playCards.append(nextCard)
    }
    return playCards.sorted()
}
