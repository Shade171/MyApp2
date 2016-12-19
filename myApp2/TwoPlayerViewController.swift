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
    var cardNamesArray: [String] = ["twoOfSpades","twoOfHearts", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts","aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts"]
    func checkCards()
    {
        let firstRandomNumber:Int = Int(arc4random_uniform(52))
        let firstCardValue = firstRandomNumber/4
        let firstFinalRandomNumber:Int = Int(arc4random_uniform(52))
        let firstFinalCardValue = firstFinalRandomNumber/4
        let secondFinalRandomNumber:Int =  Int(arc4random_uniform(52))
        let secondFinalCardValue = firstRandomNumber/4
        let secondRandomNumber:Int =  Int(arc4random_uniform(52))
        let secondCardValue = secondRandomNumber/4
        let firstFinalCardString : String = self.cardNamesArray[firstFinalRandomNumber]
        let secondFinalCardString : String = self.cardNamesArray[secondFinalRandomNumber]
        if firstCardValue > secondCardValue && firstCardValue != secondCardValue
        {
            //ToDo: numbers are equal
            playerOneScoreTotal += 1
            self.playerOneScoreLabel.text = String(playerOneScoreTotal)
            save()
            
        }
        else if firstCardValue == secondCardValue
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
                self.playerOneScoreLabel.text = String(playerOneScoreTotal)
                save()
                firstPlayerFirstBetCardImageView.image = nil
                secondPlayerFirstCardImageView.image = nil
                secondPlayerFirstBetCardImageView.image = nil
                firstPlayerSecondBetCardImageView.image = nil
                secondPlayerSecondBetCardImageView.image = nil
                firstPlayerThirdBetCardImageView.image = nil
                secondPlayerThirdBetCardImageView.image = nil
                firstPlayerFinalBetCardImageView.image = nil
                secondPlayerFinalBetCardImageView.image = nil
            }
            else
            {
                playerTwoScoreTotal += 1
                self.playerTwoScoreLabel.text = String(playerTwoScoreTotal)
                save()
                firstPlayerFirstBetCardImageView.image = nil
                secondPlayerFirstCardImageView.image = nil
                secondPlayerFirstBetCardImageView.image = nil
                firstPlayerSecondBetCardImageView.image = nil
                secondPlayerSecondBetCardImageView.image = nil
                firstPlayerThirdBetCardImageView.image = nil
                secondPlayerThirdBetCardImageView.image = nil
                firstPlayerFinalBetCardImageView.image = nil
                secondPlayerFinalBetCardImageView.image = nil
            }
        }
        else if firstCardValue < secondCardValue && firstCardValue != secondCardValue
        {
            // ToDO: second card is larger
            
            playerTwoScoreTotal += 1
            self.playerTwoScoreLabel.text = String(playerTwoScoreTotal)
            save()
            
            
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.playerOnePlayButton.setTitle("Play", for: UIControlState())
        self.playerTwoPlayButton.setTitle("Play", for: UIControlState())
        playerOnePlayButton.tag = 0
        playerTwoPlayButton.tag = 0
        let defaults = UserDefaults.standard
        if let savedWinsAndLosses = defaults.object(forKey: "wins") as? Data
        {
            winsAndLosses = NSKeyedUnarchiver.unarchiveObject(with: savedWinsAndLosses) as! [TotalWinsandLosses]
            // converts data back to object
        }

    }
    @IBAction func playerOnePlayButtonTapped(_ sender: UIButton)
    {
        playerOnePlayButton.tag = 1
        if playerOnePlayButton.tag == 1 && playerTwoPlayButton.tag == 1
        {
            checkCards()
        }
        
        
        
    }
    @IBAction func playerTwoPlayButtonTapped(_ sender: Any)
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
