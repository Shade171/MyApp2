//
//  Cards.swift
//  myApp2
//
//  Created by cstark on 3/23/17.
//  Copyright © 2017 cstarkShade. All rights reserved.
//

import UIKit

class Cards: NSObject
{
    var rank = ""
    var suit = ""
    init(Rank:String,Suit:String)
    {
        rank = Rank
        suit = Suit
    }
}
