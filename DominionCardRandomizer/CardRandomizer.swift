//
//  CardRandomizer.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Set up empty decks for different categories.

enum CardTypes{
    case addCard
    case action
    case buy
    case coin
    case trash
    case gain
    case attack
    case defense
}

var costsTwoDeck = Set<Card>()
var costsThreeDeck = Set<Card>()
var costsFourDeck = Set<Card>()
var costsFivePlusDeck = Set<Card>()

var addCard = Set<Card>()
var action = Set<Card>()
var buy = Set<Card>()
var coin = Set<Card>()
var trash = Set<Card>()
var gain = Set<Card>()
var attack = Set<Card>()
var defense = Set<Card>()

var workingDeck = Set<Card>()


/// Returns a random number within the bounds of the index
/// for the array that is passed in.
func randomIndex(for group: [Any]) -> Int {
    return Int.random(in: 0..<group.count)
}

func resetDecks() {
    costsTwoDeck = []
    costsThreeDeck = []
    costsFourDeck = []
    costsFivePlusDeck = []
    
    
    addCard = []
    action = []
    buy = []
    coin = []
    trash = []
    gain = []
    attack = []
    defense = []
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
            attack.insert(card)
        }
        if card.isDefense {
            defense.insert(card)
        }
        if card.plusCard {
            action.insert(card)
        }
        if card.plusAction {
            action.insert(card)
        }
        if card.plusBuy {
            action.insert(card)
        }
        if card.plusCoin {
            coin.insert(card)
        }
        if card.trashCardUpTo {
            trash.insert(card)
        }
        if card.gainCard {
            gain.insert(card)
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
        workingDeck = fullDeck.union(attack)
    } else if !isAttackSwitch {
        workingDeck = fullDeck.subtracting(attack)
    }
}

func checkFor(addCards: Int, actions: Int, buys: Int, coins: Int, trashes: Int, gains: Int) -> Bool{
    
    var addCardRight = false
    var actionRight = false
    var buyRight = false
    var coinRight = false
    var trashRight = false
    var gainRight = false
    
    if (plusCardSwitch && addCards >= 1) || !plusCardSwitch {
        addCardRight = true
    }
    if (plusActionSwitch && actions >= 1)  || !plusActionSwitch {
        actionRight = true
    }
    if (plusBuySwitch && buys >= 1)  || !plusBuySwitch {
        buyRight = true
    }
    if (plusCoinSwitch && coins >= 1) || !plusCoinSwitch {
        coinRight = true
    }
    if (trashCardSwitch && trashes >= 1) || !trashCardSwitch {
        trashRight = true
    }
    if (gainCardSwitch && gains >= 1) || !gainCardSwitch {
        gainRight = true
    }
    
    return addCardRight && actionRight && buyRight && coinRight && trashRight && gainRight
}

/// Returns a given number of Cards from a deck as a string.
func createRandomDeck(from deck: Set<Card>, with amount: Int) -> [String] {
    let deck = Array(deck)
    var playCards = [String]()
    var addCardCount = 0
    var actionCount = 0
    var buyCount = 0
    var coinCount = 0
    var trashCount = 0
    var gainCount = 0
    
    for _ in 1...amount {
        var nextCard: String
        repeat {
            let randomNumber = randomIndex(for: deck)
            
            if deck[randomNumber].plusCard {
                addCardCount += 1
            }
            if deck[randomNumber].plusAction {
                actionCount += 1
            }
            if deck[randomNumber].plusBuy {
                buyCount += 1
            }
            if deck[randomNumber].plusCoin {
                coinCount += 1
            }
            if deck[randomNumber].trashCardUpTo {
                trashCount += 1
            }
            if deck[randomNumber].gainCard {
                gainCount += 1
            }
            print("\(deck[randomNumber].cost)\(deck[randomNumber].plusCard)")
            nextCard = "\(deck[randomNumber].name): \(deck[randomNumber].cost)"
        } while playCards.contains(nextCard)
        playCards.append(nextCard)
    }
    if checkFor(addCards: addCardCount, actions: actionCount, buys: buyCount, coins: coinCount, trashes: trashCount, gains: gainCount) {
        return playCards.sorted()
    } else {
        return createRandomDeck(from: Set(deck), with: amount)
    }
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
    
    print("*********")
    
    return "\(playingCards[0])\n\(playingCards[1])\n\(playingCards[2])\n\(playingCards[3])\n\(playingCards[4])\n\(playingCards[5])\n\(playingCards[6])\n\(playingCards[7])\n\(playingCards[8])\n\(playingCards[9])"
}
