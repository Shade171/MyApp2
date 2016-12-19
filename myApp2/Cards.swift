//
//  Card.swift
//  myApp2
//
//  Created by cstark on 12/16/16.
//  Copyright © 2016 cstarkShade. All rights reserved.
//

import UIKit

class Cards: NSObject
{
    var rank : String
    var value : Int
    var cardNameArray : [String] = ["twoOfSpades","twoOfHearts","twoOfDiamonds","twoOfClubs", "threeOfSpades","threeOfHearts","threeOfClubs","threeOfDiamonds", "fourOfSpades","fourOfDiamonds","fourOfClubs","fourOfHearts","fiveOfSpades","fiveOfClubs","fiveOfHearts","fiveOfDiamonds","sixOfSpades","sixOfClubs","sixOfDiamonds","sixOfHearts","sevenOfSpades","sevenOfDiamonds","sevenOfClubs","sevenOfHearts","eightOfSpades","eightOfDiamonds","eightOfClubs","eightOfHearts","nineOfSpades","nineOfDiamonds","nineOfClubs","nineOfHearts","tenOfSpades","tenOfClubs","tenOfHearts","tenOfDiamonds","jackOfSpades","jackOfDiamonds","jackOfClubs","jackOfHearts","queenOfSpades","queenOfDiamonds","queenOfClubs","queenOfHearts","kingOfSpades","kingOfDiamonds","kingOfClubs","kingOfHearts","aceOfSpades","aceOfDiamonds","aceOfClubs","aceOfHearts"]
    var cardValueArray : [Int] = [2,3,4,5,6,7,8,9,10,11,12,13,1]
    
    
    init(rank: String,value:Int)
    {
      self.rank = rank
      self.value = value
    }
   
    
}
