//
//  CardRandomizer.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

/// Set up empty decks for different categories.

enum CardTypes {
    case addCard
    case action
    case buy
    case coin
    case trash
    case gain
    case attack
    case defense
}

var playingCardString: [String] = []

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
func categorizeCards(in deck: Set<Card>) -> Set<Card> {
    
    var fullDeck: Set<Card> = deck
    
    if prosperitySwitch {
        fullDeck = fullDeck.union(prosperityDeck)
    }
    
    if intrigueSwitch {
        fullDeck = fullDeck.union(intrigueDeck)
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
    return fullDeck
}

func filterOutUnwantedCards(fullDeck: Set<Card>) -> Set<Card> {
    
    if isAttackSwitch {
        workingDeck = fullDeck.union(attack)
    } else if !isAttackSwitch {
        workingDeck = fullDeck.subtracting(attack)
    }
    return workingDeck
}

func countCards(in playingCards: [Card]) -> [Int] {
    
    var addCardCount = 0
    var actionCount = 0
    var buyCount = 0
    var coinCount = 0
    var trashCount = 0
    var gainCount = 0
    var defenseCount = 0
    
    for card in playingCards {
        if card.plusCard {
            addCardCount += 1
        }
        if card.plusAction {
            actionCount += 1
        }
        if card.plusBuy {
            buyCount += 1
        }
        if card.plusCoin {
            coinCount += 1
        }
        if card.trashCardUpTo {
            trashCount += 1
        }
        if card.gainCard {
            gainCount += 1
        }
        if card.isDefense {
            defenseCount += 1
        }
    }
    
    let counts = [addCardCount, actionCount, buyCount, coinCount, trashCount, gainCount, defenseCount]
    return counts
}

func checkFor(addCards: Int, actions: Int, buys: Int, coins: Int, trashes: Int, gains: Int, defense: Int) -> Bool{
    
    var addCardRight = false
    var actionRight = false
    var buyRight = false
    var coinRight = false
    var trashRight = false
    var gainRight = false
    var defenseRight = false
    
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
    if (isDefenseSwitch && defense >= 1) || !isDefenseSwitch {
        defenseRight = true
    }
    
    return addCardRight && actionRight && buyRight && coinRight && trashRight && gainRight && defenseRight
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

/// Returns a given number of Cards from a deck as a string.
func createRandomDeck(from deck: Set<Card>, with amount: Int) -> [Card] {
    let deck = Array(deck)
    var playCards = [Card]()
    
    
    for _ in 1...amount {
        var nextCard: Card
        repeat {
            let randomNumber = randomIndex(for: deck)
            nextCard = deck[randomNumber]
        } while playCards.contains(nextCard)
        
        playCards.append(nextCard)
    }
    return playCards
}


/// Returns a list of the cards that will be used
func determinePlayingCards(cardAmounts: [Int]) -> [Card] {
    
    let playingTwos = createRandomDeck(from: workingDeck.intersection(costsTwoDeck), with: cardAmounts[0])
    let playingThrees = createRandomDeck(from: workingDeck.intersection(costsThreeDeck), with: cardAmounts[1])
    let playingFours = createRandomDeck(from: workingDeck.intersection(costsFourDeck), with: cardAmounts[2])
    let playingFivePlus = createRandomDeck(from: workingDeck.intersection(costsFivePlusDeck), with: cardAmounts[3])
    
    let playingCards = Array(playingTwos + playingThrees + playingFours + playingFivePlus)
    
    return playingCards
    
//    print("+ Cards: \(cardCounts[0])\n+ Actions: \(cardCounts[1])\n+ Buys: \(cardCounts[2])\n+ Coins: \(cardCounts[3])\nTrash: \(cardCounts[4])\nGain: \(cardCounts[5])")
//    print("*********")
    

}

func getCards() -> String {
    
    var countArray: [Int] = []
    var playingCards: [Card] = []
    playingCardString = []
    var attempt = 1
    
    repeat {
        let fullDeck = categorizeCards(in: dominionDeck)
        workingDeck = filterOutUnwantedCards(fullDeck: fullDeck)
        
        let amountArray = determineCardAmounts(twoRange: (twoMin, twoMax), threeRange: (threeMin, threeMax), fourRange: (fourMin, fourMax), fivePlusRange: (fivePlusMin, fivePlusMax))
        
        playingCards = determinePlayingCards(cardAmounts: amountArray)
        
        countArray = countCards(in: playingCards)
        
        print("******** \(attempt) *********")
        attempt += 1
        for card in 0..<playingCards.count {
            print("Name: \(playingCards[card].name) Defense: \(playingCards[card].isDefense)")//"\n+ \n+ Coin: \(playingCards[card].plusCoin)\nTrash: \(playingCards[card].trashCardUpTo)\nGain: \(playingCards[card].gainCard)\nCost: \(playingCards[card].cost)\n+ Card: \(playingCards[card].plusCard)\(playingCards[card].plusAction) + Buy: \(playingCards[card].plusBuy) ")
        }

    } while !checkFor(addCards: countArray[0], actions: countArray[1], buys: countArray[2], coins: countArray[3], trashes: countArray[4], gains: countArray[5], defense: countArray[6])
    
    for card in playingCards {
        playingCardString.append("\(card.name): \(card.cost)")
    }
    playingCardString = playingCardString.sorted()
    
    return "\(playingCardString[0])\n\(playingCardString[1])\n\(playingCardString[2])\n\(playingCardString[3])\n\(playingCardString[4])\n\(playingCardString[5])\n\(playingCardString[6])\n\(playingCardString[7])\n\(playingCardString[8])\n\(playingCardString[9])"
}
