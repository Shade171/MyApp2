//
//  OnePlayerGameViewController.swift
//  myApp2
//
//  Created by cstark on 12/14/16.
//  Copyright © 2016 cstarkShade. All rights reserved.
//

import UIKit

class OnePlayerGameViewController: UIViewController
{
    @IBOutlet weak var enemyLabel: UILabel!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var firstEnemyCardImageView: UIImageView!
    @IBOutlet weak var firstBetCardImageView: UIImageView!
    @IBOutlet weak var firstEnemyBetCardImageView: UIImageView!
    @IBOutlet weak var secondBetCardImageView: UIImageView!
    @IBOutlet weak var secondEnemyBetCardImageView: UIImageView!
    @IBOutlet weak var thirdBetCardImageView: UIImageView!
    @IBOutlet weak var thirdEnemyBetCardImageView: UIImageView!
    @IBOutlet weak var finalCardImageView: UIImageView!
    @IBOutlet weak var finalEnemyCardImageView: UIImageView!
    var winsAndLossesOne = [TotalWinsandLosses]()
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    var cardNamesArray =
        ["twoOfSpades","twoOfHearts","twoOfDiamonds","twoOfClubs", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts","aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts"]
    var deck  = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52]
    var deckOne = [Int]()
    var deckTwo = [Int]()
    var winPileOne = [Int]()
    var winPileTwo = [Int]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.playButton.setTitle("Play", for: UIControlState())
        let defaults = UserDefaults.standard
        if let savedWinsAndLosses = defaults.object(forKey: "winsAndLosses") as? Data
        {
            winsAndLossesOne = NSKeyedUnarchiver.unarchiveObject(with: savedWinsAndLosses) as! [TotalWinsandLosses]
            // converts data back to object
        }
        makeDecks()
    }
    func makeDecks()
    {
        for items in 1...26
        {
            let randSelect1 = Int(arc4random_uniform(UInt32(deck.count)))
            deckOne.append(deck[randSelect1])
            deck.remove(at: randSelect1)
            
            let randSelect2 = Int(arc4random_uniform(UInt32(deck.count)))
            deckTwo.append(deck[randSelect2])
            deck.remove(at: randSelect2)
            
            print(deck)
            print(deckOne)
            print(deckTwo)
        }
    }
    @IBAction func playButtonTapped(_ sender: UIButton)
    {
        self.playButton.setTitle("Play", for: UIControlState.normal)
        let rank = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        var card1Rank = Int(arc4random_uniform(UInt32(rank.count)))
        var card2Rank = Int(arc4random_uniform(UInt32(rank.count)))
        var card3Rank = Int(arc4random_uniform(UInt32(rank.count)))
        var card4Rank = Int(arc4random_uniform(UInt32(rank.count)))
        let randomIndex = Int(arc4random_uniform(UInt32(deckOne.count)))
        let randomIndex2 = Int(arc4random_uniform(UInt32(deckTwo.count)))
        let randomIndex3 = Int(arc4random_uniform(UInt32(deckOne.count)))
        let randomIndex4 = Int(arc4random_uniform(UInt32(deckTwo.count)))
        let card1Value = randomIndex
        let card2Value = randomIndex2
        let card3Value = randomIndex3
        let card4Value = randomIndex4
        let firstFinalCardValue = card3Value
        let secondFinalCardValue = card4Value
        let firstFinalCardString : String = self.cardNamesArray[firstFinalCardValue]
        let secondFinalCardString : String = self.cardNamesArray[secondFinalCardValue]
        func card1Check()
        {
            if deckOne[card1Value] == 1
            {
                firstCardImageView.image = UIImage(named: "twoOfSpades")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 2
            {
                firstCardImageView.image = UIImage(named: "twoOfClubs")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 3
            {
                firstCardImageView.image = UIImage(named: "twoOfDiamonds")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 4
            {
                firstCardImageView.image = UIImage(named: "twoOfHearts")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 5
            {
                firstCardImageView.image = UIImage(named: "threeOfSpades")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 6
            {
                firstCardImageView.image = UIImage(named: "threeOfHearts")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 7
            {
                firstCardImageView.image = UIImage(named: "threeOfClubs")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 8
            {
                firstCardImageView.image = UIImage(named: "threeOfDiamonds")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 9
            {
                firstCardImageView.image = UIImage(named: "fourOfSpades")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 10
            {
                firstCardImageView.image = UIImage(named: "fourOfHearts")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 11
            {
                firstCardImageView.image = UIImage(named: "fourOfClubs")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 12
            {
                firstCardImageView.image = UIImage(named: "fourOfDiamonds")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 13
            {
                firstCardImageView.image = UIImage(named: "fiveOfSpades")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 14
            {
                firstCardImageView.image = UIImage(named: "fiveOfHearts")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 15
            {
                firstCardImageView.image = UIImage(named: "fiveOfClubs")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 16
            {
                firstCardImageView.image = UIImage(named: "fiveOfDiamonds")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 17
            {
                firstCardImageView.image = UIImage(named: "sixOfSpades")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 18
            {
                firstCardImageView.image = UIImage(named: "sixOfHearts")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 19
            {
                firstCardImageView.image = UIImage(named: "sixOfClubs")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 20
            {
                firstCardImageView.image = UIImage(named: "sixOfDiamonds")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 21
            {
                firstCardImageView.image = UIImage(named: "sevenOfSpades")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 22
            {
                firstCardImageView.image = UIImage(named: "sevenOfClubs")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 23
            {
                firstCardImageView.image = UIImage(named: "sevenOfHearts")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 24
            {
                firstCardImageView.image = UIImage(named: "sevenOfDiamonds")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 25
            {
                firstCardImageView.image = UIImage(named:"eightOfSpades")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 26
            {
                firstCardImageView.image = UIImage(named: "eightOfClubs")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 27
            {
                firstCardImageView.image = UIImage(named: "eightOfHearts")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 28
            {
                firstCardImageView.image = UIImage(named: "eightOfDiamonds")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 29
            {
                firstCardImageView.image = UIImage(named: "nineOfSpades")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 30
            {
                firstCardImageView.image = UIImage(named: "nineOfClubs")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 31
            {
                firstCardImageView.image = UIImage(named: "nineOfHearts")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 32
            {
                firstCardImageView.image = UIImage(named:"nineOfDiamonds")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 33
            {
                firstCardImageView.image = UIImage(named: "tenOfSpades")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 34
            {
                firstCardImageView.image = UIImage(named: "tenOfClubs")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 35
            {
                firstCardImageView.image = UIImage(named: "tenOfHearts")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 36
            {
                firstCardImageView.image = UIImage(named: "tenOfDiamonds")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 37
            {
                firstCardImageView.image = UIImage(named: "jackOfSpades")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 38
            {
                firstCardImageView.image = UIImage(named: "jackOfClubs")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 39
            {
                firstCardImageView.image = UIImage(named: "jackOfHearts")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 40
            {
                firstCardImageView.image = UIImage(named: "jackOfDiamonds")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 41
            {
                firstCardImageView.image = UIImage(named: "queenOfSpades")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 42
            {
                firstCardImageView.image = UIImage(named: "queenOfClubs")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 43
            {
                firstCardImageView.image = UIImage(named: "queenOfHearts")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 44
            {
                firstCardImageView.image = UIImage(named: "queenOfDiamonds")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 45
            {
                firstCardImageView.image = UIImage(named: "kingOfSpades")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 46
            {
                firstCardImageView.image = UIImage(named: "kingOfClubs")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 47
            {
                firstCardImageView.image = UIImage(named: "kingOfHearts")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 48
            {
                firstCardImageView.image = UIImage(named: "kingOfDiamonds")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 49
            {
                firstCardImageView.image = UIImage(named: "aceOfClubs")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 50
            {
                firstCardImageView.image = UIImage(named: "aceOfHearts")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 51
            {
                firstCardImageView.image = UIImage(named: "aceOfDiamonds")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 52
            {
                firstCardImageView.image = UIImage(named: "aceOfSpades")
                card1Rank = 13
                print(card1Rank)
            }
        }
        func card2Check()
        {
            if deckTwo[card2Value] == 1
            {
                firstEnemyCardImageView.image = UIImage(named: "twoOfSpades")
                card2Rank = 1
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 2
            {
                firstEnemyCardImageView.image = UIImage(named: "twoOfClubs")
                card2Rank = 1
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 3
            {
                firstEnemyCardImageView.image = UIImage(named: "twoOfDiamonds")
                card2Rank = 1
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 4
            {
                firstEnemyCardImageView.image = UIImage(named: "twoOfHearts")
                card2Rank = 1
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 5
            {
                firstEnemyCardImageView.image = UIImage(named: "threeOfSpades")
                card2Rank = 2
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 6
            {
                firstEnemyCardImageView.image = UIImage(named: "threeOfHearts")
                card2Rank = 2
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 7
            {
                firstEnemyCardImageView.image = UIImage(named: "threeOfClubs")
                card2Rank = 2
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 8
            {
                firstEnemyCardImageView.image = UIImage(named: "threeOfDiamonds")
                card2Rank = 2
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 9
            {
                firstEnemyCardImageView.image = UIImage(named: "fourOfSpades")
                card2Rank = 3
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 10
            {
                firstEnemyCardImageView.image = UIImage(named: "fourOfHearts")
                card2Rank = 3
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 11
            {
                firstEnemyCardImageView.image = UIImage(named: "fourOfClubs")
                card2Rank = 3
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 12
            {
                firstEnemyCardImageView.image = UIImage(named: "fourOfDiamonds")
                card2Rank = 3
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 13
            {
                firstEnemyCardImageView.image = UIImage(named: "fiveOfSpades")
                card2Rank = 4
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 14
            {
                firstEnemyCardImageView.image = UIImage(named: "fiveOfHearts")
                card2Rank = 4
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 15
            {
                firstEnemyCardImageView.image = UIImage(named: "fiveOfClubs")
                card2Rank = 4
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 16
            {
                firstEnemyCardImageView.image = UIImage(named: "fiveOfDiamonds")
                card2Rank = 4
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 17
            {
                firstEnemyCardImageView.image = UIImage(named: "sixOfSpades")
                card2Rank = 5
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 18
            {
                firstEnemyCardImageView.image = UIImage(named: "sixOfHearts")
                card2Rank = 5
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 19
            {
                firstEnemyCardImageView.image = UIImage(named: "sixOfClubs")
                card2Rank = 5
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 20
            {
                firstEnemyCardImageView.image = UIImage(named: "sixOfDiamonds")
                card2Rank = 5
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 21
            {
                firstEnemyCardImageView.image = UIImage(named: "sevenOfSpades")
                card2Rank = 6
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 22
            {
                firstEnemyCardImageView.image = UIImage(named: "sevenOfClubs")
                card2Rank = 6
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 23
            {
                firstEnemyCardImageView.image = UIImage(named: "sevenOfHearts")
                card2Rank = 6
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 24
            {
                firstEnemyCardImageView.image = UIImage(named: "sevenOfDiamonds")
                card2Rank = 6
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 25
            {
                firstEnemyCardImageView.image = UIImage(named: "eightOfSpades")
                card2Rank = 7
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 26
            {
                firstEnemyCardImageView.image = UIImage(named: "eightOfClubs")
                card2Rank = 7
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 27
            {
                firstEnemyCardImageView.image = UIImage(named: "eightOfHearts")
                card2Rank = 7
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 28
            {
                firstEnemyCardImageView.image = UIImage(named: "eightOfDiamonds")
                card2Rank = 7
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 29
            {
                firstEnemyCardImageView.image = UIImage(named: "nineOfSpades")
                card2Rank = 8
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 30
            {
                firstEnemyCardImageView.image = UIImage(named: "nineOfClubs")
                card2Rank = 8
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 31
            {
                firstEnemyCardImageView.image = UIImage(named: "nineOfHearts")
                card2Rank = 8
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 32
            {
                firstEnemyCardImageView.image = UIImage(named: "nineOfDiamonds")
                card2Rank = 8
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 33
            {
                firstEnemyCardImageView.image = UIImage(named: "tenOfSpades")
                card2Rank = 9
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 34
            {
                firstEnemyCardImageView.image = UIImage(named: "tenOfClubs")
                card2Rank = 9
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 35
            {
                firstEnemyCardImageView.image = UIImage(named: "tenOfHearts")
                card2Rank = 9
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 36
            {
                firstEnemyCardImageView.image = UIImage(named: "tenOfDiamonds")
                card2Rank = 9
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 37
            {
                firstEnemyCardImageView.image = UIImage(named: "jackOfSpades")
                card2Rank = 10
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 38
            {
                firstEnemyCardImageView.image = UIImage(named: "jackOfClubs")
                card2Rank = 10
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 39
            {
                firstEnemyCardImageView.image = UIImage(named: "jackOfHearts")
                card2Rank = 10
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 40
            {
                firstEnemyCardImageView.image = UIImage(named: "jackOfDiamonds")
                card2Rank = 10
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 41
            {
                firstEnemyCardImageView.image = UIImage(named: "queenOfSpades")
                card2Rank = 11
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 42
            {
                firstEnemyCardImageView.image = UIImage(named: "queenOfClubs")
                card2Rank = 11
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 43
            {
                firstEnemyCardImageView.image = UIImage(named: "queenOfHearts")
                card2Rank = 11
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 44
            {
                firstEnemyCardImageView.image = UIImage(named: "queenOfDiamonds")
                card2Rank = 11
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 45
            {
                firstEnemyCardImageView.image = UIImage(named: "kingOfSpades")
                card2Rank = 12
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 46
            {
                firstEnemyCardImageView.image = UIImage(named: "kingOfClubs")
                card2Rank = 12
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 47
            {
                firstEnemyCardImageView.image = UIImage(named: "kingOfHearts")
                card2Rank = 12
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 48
            {
                firstEnemyCardImageView.image = UIImage(named: "kingOfDiamonds")
                card2Rank = 12
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 49
            {
                firstEnemyCardImageView.image = UIImage(named: "aceOfClubs")
                card2Rank = 13
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 50
            {
                firstEnemyCardImageView.image = UIImage(named: "aceOfHearts")
                card2Rank = 13
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 51
            {
                firstEnemyCardImageView.image = UIImage(named: "aceOfDiamonds")
                card2Rank = 13
                print(card2Rank)
            }
            else if deckTwo[card2Value] == 52
            {
                firstEnemyCardImageView.image = UIImage(named:"aceOfSpades")
                card2Rank = 13
                print(card2Rank)
            }
        }
        card1Check()
        card2Check()
        if card1Rank > card2Rank
            {
                playerScoreTotal += 1
                self.playerScoreLabel.text = String(playerScoreTotal)
                deckOne.remove(at: card1Value)
                deckTwo.remove(at: card2Value)
                winPileOne.append(card1Value)
                winPileOne.append(card2Value)
                save()
            }
            else if card1Rank == card2Rank
            {
                print("cardValue not equal cardRank is equal")
                firstBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                firstEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                thirdBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                thirdEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                finalCardImageView.image = UIImage(named:firstFinalCardString)
                finalEnemyCardImageView.image = UIImage(named: secondFinalCardString)
                if firstFinalCardValue > secondFinalCardValue
                {
                    playerScoreTotal += 1
                    self.playerScoreLabel.text = String(playerScoreTotal)
                    firstBetCardImageView.image = nil
                    firstEnemyBetCardImageView.image = nil
                    secondBetCardImageView.image = nil
                    secondEnemyBetCardImageView.image = nil
                    thirdBetCardImageView.image = nil
                    thirdEnemyBetCardImageView.image = nil
                    finalCardImageView.image = nil
                    finalEnemyCardImageView.image = nil
                    deckOne.remove(at: card1Value)
                    deckTwo.remove(at: card2Value)
                    winPileOne.append(card1Value)
                    winPileOne.append(card2Value)
                    save()
                }
                else
                {
                    enemyScoreTotal += 1
                    self.enemyScoreLabel.text = String(enemyScoreTotal)
                    firstBetCardImageView.image = nil
                    firstEnemyBetCardImageView.image = nil
                    secondBetCardImageView.image = nil
                    secondEnemyBetCardImageView.image = nil
                    thirdBetCardImageView.image = nil
                    thirdEnemyBetCardImageView.image = nil
                    finalCardImageView.image = nil
                    finalEnemyCardImageView.image = nil
                    deckOne.remove(at: card1Value)
                    deckTwo.remove(at: card2Value)
                    winPileTwo.append(card1Value)
                    winPileTwo.append(card2Value)
                    save()
                }
            }
            else if card1Rank < card2Rank
            {
                enemyScoreTotal += 1
                enemyScoreLabel.text = String(enemyScoreTotal)
                deckOne.remove(at: card1Value)
                deckTwo.remove(at: card2Value)
                winPileTwo.append(card1Value)
                winPileTwo.append(card2Value)
                save()
            }
        if deckOne.isEmpty == true && winPileOne.isEmpty == false
        {
            deckOne.append(winPileOne.count)
        }
        else if deckTwo.isEmpty == true && winPileTwo.isEmpty == false
        {
            deckTwo.append(winPileTwo.count)
        }
        func win()
        {
            if deckOne.isEmpty == true && winPileOne.isEmpty == true
            {
                print("enemy win")
            }
            else if deckTwo.isEmpty == true && winPileTwo.isEmpty == true
            {
                print("you win")
            }
        }
        win()
    }
    func save()
    {
        //NSKevyedArchiever converts our array into a data object
        let savedData = NSKeyedArchiver.archivedData(withRootObject: winsAndLossesOne)
        let defaults = UserDefaults.standard
        defaults.set(savedData,forKey:"winsAndLosses")
    }
}
