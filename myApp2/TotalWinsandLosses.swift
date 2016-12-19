//
//  TotalWinsandLosses.swift
//  myApp2
//
//  Created by cstark on 12/19/16.
//  Copyright © 2016 cstarkShade. All rights reserved.
//

import UIKit

class TotalWinsandLosses: NSObject, NSCoding
{
    var wins : Int
    var losses : Int
    
    init(wins: Int,losses: Int)
    {
        self.wins = wins
        self.losses = losses
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        wins = aDecoder.decodeObject(forKey:"win") as! Int
        losses = aDecoder.decodeObject(forKey:"losses") as! Int
    }
    
    func encode(with aCoder: NSCoder)
    {
        aCoder.encode(wins, forKey:"win")
        aCoder.encode(losses, forKey:"losses")
    }

}
