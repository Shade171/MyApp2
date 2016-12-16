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
    @IBOutlet weak var totalWins: UILabel!
    @IBOutlet weak var totalLosses: UILabel!
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
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    var cardNamesArray: [String] = ["aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts","twoOfSpades","twoOfHearts", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.playButton.setTitle("Play", for: UIControlState())
    }
    @IBAction func playButtonTapped(_ sender: UIButton)
    {
        self.playButton.setTitle("Play Round", for: UIControlState.normal)
        
        // Randomly chooses cards for First ImageView
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Second card
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        self.firstEnemyCardImageView.image = UIImage(named: secondCardString)
        // “%@” is the wildcard character for text data in a string format.
        
        
        
        
        //Determine the higher card - First Card
        if firstRandomNumber > secondRandomNumber && firstCardString != secondCardString
        {
            //ToDo: numbers are equal
            playerScoreTotal += 1
            self.playerScoreLabel.text = String(playerScoreTotal)
            
        }
        else if firstRandomNumber == secondRandomNumber  && firstCardString != secondCardString

        {
            let firstBetNumber:Int = Int(arc4random_uniform(13))
            let firstBetCardString : String = self.cardNamesArray[firstBetNumber]
          self.firstBetCardImageView.image = UIImage(named: firstBetCardString)
            let firstEnemyBetNumber :Int = Int(arc4random_uniform(13))
            let firstEnemyBetCardString : String = self.cardNamesArray[firstEnemyBetNumber]
            self.firstEnemyBetCardImageView.image = UIImage(named: firstEnemyBetCardString)
        }
        else
        {
            // ToDO: second card is larger
            
            enemyScoreTotal += 1
            self.enemyScoreLabel.text = String(enemyScoreTotal)
            
            
        }
  
    }
    
}
