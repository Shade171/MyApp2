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
    var winsAndLosses : Int
    
    init(winsAndLosses: Int)
    {
        self.winsAndLosses = winsAndLosses
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        winsAndLosses = aDecoder.decodeObject(forKey:"winAndLosses") as! Int
    }
    
    func encode(with aCoder: NSCoder)
    {
        aCoder.encode(winsAndLosses, forKey:"winAndLosses")
    }

}
