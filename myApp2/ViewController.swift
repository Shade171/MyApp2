//
//  ViewController.swift
//  myApp2
//
//  Created by cstark on 12/1/16.
//  Copyright © 2016 cstarkShade. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let cardBacks = #imageLiteral(resourceName: "cardBack")
    let aces = [#imageLiteral(resourceName: "aceOfClubs"),#imageLiteral(resourceName: "aceOfHearts"),#imageLiteral(resourceName: "aceOfSpades"),#imageLiteral(resourceName: "aceOfDiamonds")]
    let twos = [#imageLiteral(resourceName: "twoOfClubs"),#imageLiteral(resourceName: "twoOfHearts"),#imageLiteral(resourceName: "twoOfSpades"),#imageLiteral(resourceName: "twoOfDiamonds")]
    let threes = [#imageLiteral(resourceName: "threeOfClubs"),#imageLiteral(resourceName: "threeOfHearts"),#imageLiteral(resourceName: "threeOfSpades"),#imageLiteral(resourceName: "threeOfDiamonds")]
    let fours = [#imageLiteral(resourceName: "fourOfClubs"),#imageLiteral(resourceName: "fourOfHearts"),#imageLiteral(resourceName: "fourOfSpades"),#imageLiteral(resourceName: "fourOfDiamonds")]
    let fives = [#imageLiteral(resourceName: "fiveOfClubs"),#imageLiteral(resourceName: "fiveOfHearts"),#imageLiteral(resourceName: "fiveOfSpades"),#imageLiteral(resourceName: "fiveOfDiamonds")]
    let sixs = [#imageLiteral(resourceName: "sixOfClubs"),#imageLiteral(resourceName: "sixOfHearts"),#imageLiteral(resourceName: "sixOfSpades"),#imageLiteral(resourceName: "sixOfDiamonds")]
    let sevens = [#imageLiteral(resourceName: "sevenOfClubs"),#imageLiteral(resourceName: "sevenOfHearts"),#imageLiteral(resourceName: "sevenOfSpades"),#imageLiteral(resourceName: "sevenOfDiamonds")]
    let eights = [#imageLiteral(resourceName: "eightOfClubs"),#imageLiteral(resourceName: "eightOfHearts"),#imageLiteral(resourceName: "eightOfSpades"),#imageLiteral(resourceName: "eightOfDiamonds")]
    let nines = [#imageLiteral(resourceName: "nineOfClubs"),#imageLiteral(resourceName: "nineOfHearts"),#imageLiteral(resourceName: "nineOfSpades"),#imageLiteral(resourceName: "nineOfDiamonds")]
    let tens =  [#imageLiteral(resourceName: "tenOfClubs"),#imageLiteral(resourceName: "tenOfHearts"),#imageLiteral(resourceName: "tenOfSpades"),#imageLiteral(resourceName: "tenOfDiamonds")]
    let jacks = [#imageLiteral(resourceName: "jackOfClubs"),#imageLiteral(resourceName: "jackOfHearts"),#imageLiteral(resourceName: "jackOfSpades"),#imageLiteral(resourceName: "jackOfDiamonds")]
    let queens = [#imageLiteral(resourceName: "queenOfClubs"),#imageLiteral(resourceName: "queenOfHearts"),#imageLiteral(resourceName: "queenOfSpades"),#imageLiteral(resourceName: "queenOfDiamonds")]
    let kings = [#imageLiteral(resourceName: "kingOfClubs"),#imageLiteral(resourceName: "kingOfHearts"),#imageLiteral(resourceName: "kingOfSpades"),#imageLiteral(resourceName: "kingOfDiamonds")]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let cards = [aces,twos,threes,fours,fives,sixs,sevens,eights,nines,tens,jacks,queens,kings]
    }
}

