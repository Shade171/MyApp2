//: Playground - noun: a place where people can play

import UIKit

  var deck  = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52]

var halfOne = [Int]()
var halfTwo = [Int]()


for items in 1...26
{
    var randSelect1 = Int(arc4random_uniform(UInt32(deck.count)))
    halfOne.append(deck[randSelect1])
    deck.remove(at: randSelect1)
    
    var randSelect2 = Int(arc4random_uniform(UInt32(deck.count)))
    halfTwo.append(deck[randSelect2])
    deck.remove(at: randSelect2)
    
    print(deck)
    print(halfOne)
    print(halfTwo)
}