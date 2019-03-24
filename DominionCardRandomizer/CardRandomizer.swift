//
//  CardRandomizer.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Set up empty decks for different categories.

var attackDeck = Set<Card>()
var defenseDeck = Set<Card>()
var costsTwoDeck = Set<Card>()
var costsThreeDeck = Set<Card>()
var costsFourDeck = Set<Card>()
var costsFivePlusDeck = Set<Card>()

var plusZeroCard = Set<Card>()
var plusOneCard = Set<Card>()
var plusMoreCard = Set<Card>()

var plusZeroAction = Set<Card>()
var plusOneAction = Set<Card>()
var plusMoreAction = Set<Card>()

var plusZeroBuy = Set<Card>()
var plusOneBuy = Set<Card>()

var plusZeroCoin = Set<Card>()
var plusOneCoin = Set<Card>()
var plusMoreCoin = Set<Card>()

var trashZeroCard = Set<Card>()
var trashOneCard = Set<Card>()
var trashMoreCard = Set<Card>()

var gainZeroCard = Set<Card>()
var gainMoreCard = Set<Card>()

var workingDeck = Set<Card>()


/// Returns a random number within the bounds of the index
/// for the array that is passed in.
func randomIndex(for group: [Any]) -> Int {
    return Int.random(in: 0..<group.count)
}

func resetDecks() {
    attackDeck = []
    defenseDeck = []
    costsTwoDeck = []
    costsThreeDeck = []
    costsFourDeck = []
    costsFivePlusDeck = []
    
    plusZeroCard = []
    plusOneCard = []
    plusMoreCard = []
    
    plusZeroAction = []
    plusOneAction = []
    plusMoreAction = []
    
    plusZeroBuy = []
    plusOneBuy = []
    
    plusZeroCoin = []
    plusOneCoin = []
    plusMoreCoin = []
    
    trashZeroCard = []
    trashOneCard = []
    trashMoreCard = []
    
    gainZeroCard = []
    gainMoreCard = []
}

/// Takes a deck and returns populated decks for the empty
/// decks set up above.
func categorizeCards(in deck: Set<Card>) {
    
    var fullDeck: Set<Card> = deck
    print(fullDeck.count)
    
    if prosperitySwitch {
        fullDeck = fullDeck.union(prosperityDeck)
        print(fullDeck.count)
    }
    
    resetDecks()
    
    for card in fullDeck {
        if card.isAttack {
            attackDeck.insert(card)
        }
        if card.isDefense {
            defenseDeck.insert(card)
        }
        switch card.plusCard {
        case 0: plusZeroCard.insert(card)
        case 1: plusOneCard.insert(card)
        default: plusMoreCard.insert(card)
        }
        switch card.plusAction {
        case 0: plusZeroAction.insert(card)
        case 1: plusOneAction.insert(card)
        default: plusMoreAction.insert(card)
        }
        switch card.plusBuy {
        case 0: plusZeroBuy.insert(card)
        default: plusOneBuy.insert(card)
        }
        switch card.plusCoin {
        case 0: plusZeroCoin.insert(card)
        case 1: plusOneCoin.insert(card)
        default: plusMoreCoin.insert(card)
        }
        switch card.trashCardUpTo {
        case 0: trashZeroCard.insert(card)
        case 1: trashOneCard.insert(card)
        default: trashMoreCard.insert(card)
        }
        switch card.gainCard {
        case 0: gainZeroCard.insert(card)
        default: gainMoreCard.insert(card)
        }
        
        switch card.cost {
        case 2: costsTwoDeck.insert(card)
        case 3: costsThreeDeck.insert(card)
        case 4: costsFourDeck.insert(card)
        default: costsFivePlusDeck.insert(card)
        }
    }
    filterOutUnwantedCards(fullDeck: fullDeck)
}

func filterOutUnwantedCards(fullDeck: Set<Card>) {
    
    if isAttackSwitch {
        workingDeck = fullDeck.union(attackDeck)
    } else if !isAttackSwitch {
        workingDeck = fullDeck.subtracting(attackDeck)
    }
    print("****** Working Deck: \(workingDeck.count) *******")
    
}

/// Returns a given number of Cards from a deck as a string.
func createRandomDeck(from deck: Set<Card>, with amount: Int) -> [String] {
    let deck = Array(deck)
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
    
    let playingTwos = (createRandomDeck(from: workingDeck.intersection(costsTwoDeck), with: cardAmounts[0]))
    let playingThrees = (createRandomDeck(from: workingDeck.intersection(costsThreeDeck), with: cardAmounts[1]))
    let playingFours = (createRandomDeck(from: workingDeck.intersection(costsFourDeck), with: cardAmounts[2]))
    let playingFivePlus = (createRandomDeck(from: workingDeck.intersection(costsFivePlusDeck), with: cardAmounts[3]))
    let playingCards = (playingTwos + playingThrees + playingFours + playingFivePlus).sorted()
    
    return "\(playingCards[0])\n\(playingCards[1])\n\(playingCards[2])\n\(playingCards[3])\n\(playingCards[4])\n\(playingCards[5])\n\(playingCards[6])\n\(playingCards[7])\n\(playingCards[8])\n\(playingCards[9])"
}


