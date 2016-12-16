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
    @IBOutlet weak var playerOneTotalWins: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
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
    @IBOutlet weak var playerTwoTotalWins: UILabel!
    var playerOneScoreTotal = 0
    var playerTwoScoreTotal = 0
    func checkCards()
    {
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        if firstRandomNumber > secondRandomNumber && firstCardString != secondCardString
        {
            //ToDo: numbers are equal
            playerOneScoreTotal += 1
            self.playerOneScoreLabel.text = String(playerOneScoreTotal)
            
        }
        else if firstRandomNumber == secondRandomNumber
        {
            
        }
        else
        {
            // ToDO: second card is larger
            
            playerTwoScoreTotal += 1
            self.playerTwoScoreLabel.text = String(playerTwoScoreTotal)
            
            
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.playerOnePlayButton.setTitle("Play", for: UIControlState())
        self.playerTwoPlayButton.setTitle("Play", for: UIControlState())
        playerOnePlayButton.tag = 0
        playerTwoPlayButton.tag = 0
    }
    var cardNamesArray: [String] = ["aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts","twoOfSpades","twoOfHearts", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts"]
    @IBAction func playerOnePlayButtonTapped(_ sender: UIButton)
    {
        playerOnePlayButton.tag = 1
        self.playerOnePlayButton.setTitle("Play Round", for: UIControlState.normal)
        
        // Randomly chooses cards for First ImageView
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstPlayerFirstCardImageView.image = UIImage(named: firstCardString)
        
        if playerOnePlayButton.tag == 1 && playerTwoPlayButton.tag == 1
        {
            checkCards()
        }
        
        
        
    }
    @IBAction func playerTwoPlayButtonTapped(_ sender: Any)
    {
        playerTwoPlayButton.tag = 1
        self.playerTwoPlayButton.setTitle("Play Round", for: UIControlState.normal)
        
        // Second card
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        self.secondPlayerFirstCardImageView.image = UIImage(named: secondCardString)
        if playerOnePlayButton.tag == 1 && playerTwoPlayButton.tag == 1
        {
        checkCards()
        }
    }
}
