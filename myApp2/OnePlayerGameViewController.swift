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
    
    
    var winsAndLosses = [TotalWinsandLosses]()
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    var cardNamesArray: [String] = ["twoOfSpades","twoOfHearts","twoOfDiamonds","twoOfClubs", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts","aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.playButton.setTitle("Play", for: UIControlState())
        let defaults = UserDefaults.standard
        if let savedWinsAndLosses = defaults.object(forKey: "wins") as? Data
        {
            winsAndLosses = NSKeyedUnarchiver.unarchiveObject(with: savedWinsAndLosses) as! [TotalWinsandLosses]
            // converts data back to object
        }

    }
    
    @IBAction func playButtonTapped(_ sender: UIButton)
    {
        self.playButton.setTitle("Play", for: UIControlState.normal)
        
        // Randomly chooses cards for First ImageView
        let firstRandomNumber: Int = Int(arc4random_uniform(52))
        
        // Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Set value of first card
        let firstCardValue = firstRandomNumber/4
        
        // Second card
        let secondRandomNumber:Int = Int(arc4random_uniform(52))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        let secondCardValue = secondRandomNumber/4
        
        self.firstEnemyCardImageView.image = UIImage(named: secondCardString)
        // “%@” is the wildcard character for text data in a string format.
        
        
        
        
        //Determine the higher card - First Card
        if firstCardValue > secondCardValue && firstCardValue != secondCardValue
        {
            //ToDo: numbers are equal
            playerScoreTotal += 1
            self.playerScoreLabel.text = String(playerScoreTotal)
            save()
            
        }
        else if firstCardValue == secondCardValue

        {
            let firstFinalRandomNumber:Int = Int(arc4random_uniform(52))
            let firstFinalCardValue = firstFinalRandomNumber/4
            let firstFinalCardString : String = self.cardNamesArray[firstFinalRandomNumber]
            let secondFinalRandomNumber:Int = Int(arc4random_uniform(52))
            let secondFinalCardValue = secondRandomNumber/4
            let secondFinalCardString : String = self.cardNamesArray[secondFinalRandomNumber]
            firstBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            firstEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            secondBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            secondEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            thirdBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            thirdEnemyBetCardImageView.image = #imageLiteral(resourceName: "cardBack")
            finalCardImageView.image = UIImage(named:firstFinalCardString)
            finalEnemyCardImageView.image = UIImage(named: secondFinalCardString)
            if firstFinalCardValue > secondFinalCardValue && firstFinalCardValue != secondFinalCardValue
            {
                playerScoreTotal += 1
                save()
                self.playerScoreLabel.text = String(playerScoreTotal)
                firstBetCardImageView.image = nil
                firstEnemyBetCardImageView.image = nil
                secondBetCardImageView.image = nil
                secondEnemyBetCardImageView.image = nil
                thirdBetCardImageView.image = nil
                thirdEnemyBetCardImageView.image = nil
                finalCardImageView.image = nil
                finalEnemyCardImageView.image = nil
            }
            else if firstCardValue < secondCardValue && firstCardValue != secondCardValue
            {
                enemyScoreTotal += 1
                save()
                self.enemyScoreLabel.text = String(enemyScoreTotal)
                firstBetCardImageView.image = nil
                firstEnemyBetCardImageView.image = nil
                secondBetCardImageView.image = nil
                secondEnemyBetCardImageView.image = nil
                thirdBetCardImageView.image = nil
                thirdEnemyBetCardImageView.image = nil
                finalCardImageView.image = nil
                finalEnemyCardImageView.image = nil
            }
         
        }
        else
        {
            // ToDO: second card is larger
            
            enemyScoreTotal += 1
            self.enemyScoreLabel.text = String(enemyScoreTotal)
            save()
            
            
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
