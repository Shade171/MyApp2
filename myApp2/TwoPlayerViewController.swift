//
//  TwoPlayerViewController.swift
//  myApp2
//
//  Created by cstark on 12/14/16.
//  Copyright © 2016 cstarkShade. All rights reserved.
//

import UIKit

class TwoPlayerViewController: UIViewController
{
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerOneScoreLabel: UILabel!
    @IBOutlet weak var firstPlayerFirstCardImageView: UIImageView!
    @IBOutlet weak var secondPlayerFirstCardImageView: UIImageView!
    @IBOutlet weak var firstPlayerFirstBetCardImageView: UIImageView!
    @IBOutlet weak var secondPlayerFirstBetCardImageView: UIImageView!
    @IBOutlet weak var firstPlayerSecondBetCardImageView: UIImageView!
    @IBOutlet weak var secondPlayerSecondBetCardImageView: UIImageView!
    @IBOutlet weak var firstPlayerThirdBetCardImageView: UIImageView!
    @IBOutlet weak var secondPlayerThirdBetCardImageView: UIImageView!
    @IBOutlet weak var firstPlayerFinalBetCardImageView: UIImageView!
    @IBOutlet weak var secondPlayerFinalBetCardImageView: UIImageView!
    @IBOutlet weak var playerOnePlayButton: UIButton!
    @IBOutlet weak var playerTwoPlayButton: UIButton!
    @IBOutlet weak var playerTwoScoreLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    var winsAndLosses = [TotalWinsandLosses]()
    var playerOneScoreTotal = 0
    var playerTwoScoreTotal = 0
    var cardNamesArray: [String] = ["twoOfSpades","twoOfHearts","twoOfDiamonds","twoOfClubs", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts","aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts"]
    var deck  = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52]
    var deckOne = [Int]()
    var deckTwo = [Int]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        if let savedWinsAndLosses = defaults.object(forKey:"winsAndLosses") as? Data
        {
            winsAndLosses = NSKeyedUnarchiver.unarchiveObject(with: savedWinsAndLosses) as! [TotalWinsandLosses]
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
    func checkCards()
    {
        let rank = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        var card1Rank = Int(arc4random_uniform(UInt32(rank.count)))
        var card2Rank = Int(arc4random_uniform(UInt32(rank.count)))
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
                firstPlayerFirstCardImageView.image = UIImage(named: "twoOfSpades")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 2
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "twoOfClubs")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 3
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "twoOfDiamonds")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 4
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "twoOfHearts")
                card1Rank = 1
                print(card1Rank)
            }
            else if deckOne[card1Value] == 5
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "threeOfSpades")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 6
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "threeOfHearts")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 7
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "threeOfClubs")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 8
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "threeOfDiamonds")
                card1Rank = 2
                print(card1Rank)
            }
            else if deckOne[card1Value] == 9
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fourOfSpades")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 10
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fourOfHearts")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 11
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fourOfClubs")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 12
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fourOfDiamonds")
                card1Rank = 3
                print(card1Rank)
            }
            else if deckOne[card1Value] == 13
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fiveOfSpades")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 14
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fiveOfHearts")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 15
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fiveOfClubs")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 16
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "fiveOfDiamonds")
                card1Rank = 4
                print(card1Rank)
            }
            else if deckOne[card1Value] == 17
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sixOfSpades")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 18
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sixOfHearts")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 19
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sixOfClubs")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 20
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sixOfDiamonds")
                card1Rank = 5
                print(card1Rank)
            }
            else if deckOne[card1Value] == 21
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sevenOfSpades")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 22
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sevenOfClubs")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 23
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sevenOfHearts")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 24
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "sevenOfDiamonds")
                card1Rank = 6
                print(card1Rank)
            }
            else if deckOne[card1Value] == 25
            {
                firstPlayerFirstCardImageView.image = UIImage(named:"eightOfSpades")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 26
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "eightOfClubs")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 27
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "eightOfHearts")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 28
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "eightOfDiamonds")
                card1Rank = 7
                print(card1Rank)
            }
            else if deckOne[card1Value] == 29
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "nineOfSpades")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 30
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "nineOfClubs")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 31
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "nineOfHearts")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 32
            {
                firstPlayerFirstCardImageView.image = UIImage(named:"nineOfDiamonds")
                card1Rank = 8
                print(card1Rank)
            }
            else if deckOne[card1Value] == 33
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "tenOfSpades")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 34
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "tenOfClubs")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 35
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "tenOfHearts")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 36
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "tenOfDiamonds")
                card1Rank = 9
                print(card1Rank)
            }
            else if deckOne[card1Value] == 37
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "jackOfSpades")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 38
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "jackOfClubs")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 39
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "jackOfHearts")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 40
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "jackOfDiamonds")
                card1Rank = 10
                print(card1Rank)
            }
            else if deckOne[card1Value] == 41
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "queenOfSpades")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 42
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "queenOfClubs")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 43
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "queenOfHearts")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 44
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "queenOfDiamonds")
                card1Rank = 11
                print(card1Rank)
            }
            else if deckOne[card1Value] == 45
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "kingOfSpades")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 46
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "kingOfClubs")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 47
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "kingOfHearts")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 48
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "kingOfDiamonds")
                card1Rank = 12
                print(card1Rank)
            }
            else if deckOne[card1Value] == 49
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "aceOfClubs")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 50
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "aceOfHearts")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 51
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "aceOfDiamonds")
                card1Rank = 13
                print(card1Rank)
            }
            else if deckOne[card1Value] == 52
            {
                firstPlayerFirstCardImageView.image = UIImage(named: "aceOfSpades")
                card1Rank = 13
                print(card1Rank)
            }
        }
        func card2Check()
    {
        if deckTwo[card2Value] == 1
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "twoOfSpades")
            card2Rank = 1
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 2
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "twoOfClubs")
            card2Rank = 1
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 3
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "twoOfDiamonds")
            card2Rank = 1
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 4
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "twoOfHearts")
            card2Rank = 1
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 5
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "threeOfSpades")
            card2Rank = 2
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 6
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "threeOfHearts")
            card2Rank = 2
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 7
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "threeOfClubs")
            card2Rank = 2
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 8
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "threeOfDiamonds")
            card2Rank = 2
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 9
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fourOfSpades")
            card2Rank = 3
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 10
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fourOfHearts")
            card2Rank = 3
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 11
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fourOfClubs")
            card2Rank = 3
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 12
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fourOfDiamonds")
            card2Rank = 3
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 13
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fiveOfSpades")
            card2Rank = 4
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 14
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fiveOfHearts")
            card2Rank = 4
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 15
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fiveOfClubs")
            card2Rank = 4
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 16
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "fiveOfDiamonds")
            card2Rank = 4
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 17
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sixOfSpades")
            card2Rank = 5
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 18
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sixOfHearts")
            card2Rank = 5
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 19
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sixOfClubs")
            card2Rank = 5
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 20
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sixOfDiamonds")
            card2Rank = 5
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 21
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sevenOfSpades")
            card2Rank = 6
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 22
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sevenOfClubs")
            card2Rank = 6
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 23
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sevenOfHearts")
            card2Rank = 6
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 24
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "sevenOfDiamonds")
            card2Rank = 6
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 25
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "eightOfSpades")
            card2Rank = 7
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 26
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "eightOfClubs")
            card2Rank = 7
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 27
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "eightOfHearts")
            card2Rank = 7
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 28
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "eightOfDiamonds")
            card2Rank = 7
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 29
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "nineOfSpades")
            card2Rank = 8
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 30
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "nineOfClubs")
            card2Rank = 8
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 31
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "nineOfHearts")
            card2Rank = 8
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 32
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "nineOfDiamonds")
            card2Rank = 8
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 33
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "tenOfSpades")
            card2Rank = 9
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 34
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "tenOfClubs")
            card2Rank = 9
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 35
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "tenOfHearts")
            card2Rank = 9
            print(card2Rank)
        }
        else if deck[card2Value] == 36
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "tenOfDiamonds")
            card2Rank = 9
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 37
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "jackOfSpades")
            card2Rank = 10
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 38
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "jackOfClubs")
            card2Rank = 10
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 39
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "jackOfHearts")
            card2Rank = 10
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 40
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "jackOfDiamonds")
            card2Rank = 10
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 41
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "queenOfSpades")
            card2Rank = 11
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 42
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "queenOfClubs")
            card2Rank = 11
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 43
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "queenOfHearts")
            card2Rank = 11
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 44
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "queenOfDiamonds")
            card2Rank = 11
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 45
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "kingOfSpades")
            card2Rank = 12
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 46
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "kingOfClubs")
            card2Rank = 12
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 47
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "kingOfHearts")
            card2Rank = 12
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 48
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "kingOfDiamonds")
            card2Rank = 12
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 49
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "aceOfClubs")
            card2Rank = 13
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 50
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "aceOfHearts")
            card2Rank = 13
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 51
        {
            secondPlayerFirstCardImageView.image = UIImage(named: "aceOfDiamonds")
            card2Rank = 13
            print(card2Rank)
        }
        else if deckTwo[card2Value] == 52
        {
            secondPlayerFirstCardImageView.image = UIImage(named:"aceOfSpades")
            card2Rank = 13
            print(card2Rank)
        }
    }
        card1Check()
        card2Check()
        if  card1Rank > card2Rank
            {
                playerOneScoreTotal += 1
                playerOneScoreLabel.text = String(playerOneScoreTotal)
                save()
            }
            else if card1Rank == card2Rank
            {
                firstPlayerFirstBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondPlayerFirstCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondPlayerFirstBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                firstPlayerSecondBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondPlayerSecondBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                firstPlayerThirdBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                secondPlayerThirdBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
                firstPlayerFinalBetCardImageView.image = UIImage(named:firstFinalCardString)
                secondPlayerFinalBetCardImageView.image = UIImage(named: secondFinalCardString)
                if firstFinalCardValue > secondFinalCardValue
                {
                    playerOneScoreTotal += 1
                    playerOneScoreLabel.text = String(self.playerOneScoreTotal)
                    firstPlayerFirstBetCardImageView.image = nil
                    secondPlayerFirstCardImageView.image = nil
                    secondPlayerFirstBetCardImageView.image = nil
                    firstPlayerSecondBetCardImageView.image = nil
                    secondPlayerSecondBetCardImageView.image = nil
                    firstPlayerThirdBetCardImageView.image = nil
                    secondPlayerThirdBetCardImageView.image = nil
                    firstPlayerFinalBetCardImageView.image = nil
                    secondPlayerFinalBetCardImageView.image = nil
                    save()
                }
                else
                {
                    playerTwoScoreTotal += 1
                    playerTwoScoreLabel.text = String(playerTwoScoreTotal)
                    firstPlayerFirstBetCardImageView.image = nil
                    secondPlayerFirstCardImageView.image = nil
                    secondPlayerFirstBetCardImageView.image = nil
                    firstPlayerSecondBetCardImageView.image = nil
                    secondPlayerSecondBetCardImageView.image = nil
                    firstPlayerThirdBetCardImageView.image = nil
                    secondPlayerThirdBetCardImageView.image = nil
                    firstPlayerFinalBetCardImageView.image = nil
                    secondPlayerFinalBetCardImageView.image = nil
                    save()
                }
            }
                else if card2Rank > card1Rank
                {
                    playerTwoScoreTotal += 1
                    playerTwoScoreLabel.text = String(playerTwoScoreTotal)
                    save()
                }
        playerOnePlayButton.tag = 0
        playerTwoPlayButton.tag = 0
    }
     @IBAction func playerOnePlayButtonTapped(_ sender: UIButton)
    {
    playerOnePlayButton.tag = 1
        if playerOnePlayButton.tag == 1 && playerTwoPlayButton.tag == 1
        {
         checkCards()
        }
    }
    @IBAction func playerTwoPlayButtonTapped(_ sender: UIButton)
    {
        playerTwoPlayButton.tag = 1
        if playerOnePlayButton.tag == 1 && playerTwoPlayButton.tag == 1
        {
         checkCards()
        }
    }
    func save()
    {
        //NSKevyedArchiever converts our array into a data object
        let savedData = NSKeyedArchiver.archivedData(withRootObject: winsAndLosses)
        let defaults = UserDefaults.standard
        defaults.set(savedData,forKey:"winsAndLosses")
    }
}
