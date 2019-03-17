//
//  CardRandomizer.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Set up empty decks for different categories.
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


/// Returns a random number within the bounds of the index
/// for the array that is passed in.
func randomIndex(for group: [Any]) -> Int {
    return Int.random(in: 0..<group.count)
}

/// Takes a deck and returns populated decks for the empty
/// decks set up above.
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

/// Returns a given number of Cards from a deck as a string.
func createRandomDeck(from deck: [Card], with amount: Int) -> [String] {
    var playCards = [String]()
    for _ in 1...amount {
        var nextCard: String
        repeat {
            let randomNumber = randomIndex(for: deck)
            nextCard = "\(deck[randomNumber].name): \(deck[randomNumber].cost)"
        } while playCards.contains(nextCard)
        playCards.append(nextCard)
    }
    return playCards.sorted()
}

/// Determines how many cards are needed from each cost
/// category.
func determineCardAmounts(twoRange: (Int, Int), threeRange: (Int, Int), fourRange: (Int, Int), fivePlusRange: (Int, Int)) -> [Int] {
    var twoAmount: Int
    var threeAmount: Int
    var fourAmount: Int
    var fivePlusAmount: Int
    var twoThroughFour: Int
    repeat {
        twoAmount = Int.random(in: twoRange.0...twoRange.1)
        threeAmount = Int.random(in: threeRange.0...threeRange.1)
        fourAmount = Int.random(in: fourRange.0...fourRange.1)
        twoThroughFour = twoAmount + threeAmount + fourAmount
    } while 10 - twoThroughFour < fivePlusRange.0 || 10 - twoThroughFour > fivePlusRange.1
    fivePlusAmount = 10 - twoThroughFour
    return [twoAmount, threeAmount, fourAmount, fivePlusAmount]
}

/// Returns a list of the cards that will be used in the
/// form of a string.
func determinePlayingCards() -> String {
    let twoMin = 1
    let twoMax = 2
    let threeMin = 1
    let threeMax = 3
    let fourMin = 2
    let fourMax = 5
    let fivePlusMin = 1
    let fivePlusMax = 4
    let cardAmounts = determineCardAmounts(twoRange: (twoMin, twoMax), threeRange: (threeMin, threeMax), fourRange: (fourMin, fourMax), fivePlusRange: (fivePlusMin, fivePlusMax))
    
    let playingTwos = (createRandomDeck(from: costsTwoDeck, with: cardAmounts[0]))
    let playingThrees = (createRandomDeck(from: costsThreeDeck, with: cardAmounts[1]))
    let playingFours = (createRandomDeck(from: costsFourDeck, with: cardAmounts[2]))
    let playingFivePlus = (createRandomDeck(from: costsFivePlusDeck, with: cardAmounts[3]))
    let playingCards = (playingTwos + playingThrees + playingFours + playingFivePlus).sorted()
    
    return "\(playingCards[0])\n\(playingCards[1])\n\(playingCards[2])\n\(playingCards[3])\n\(playingCards[4])\n\(playingCards[5])\n\(playingCards[6])\n\(playingCards[7])\n\(playingCards[8])\n\(playingCards[9])"
}
