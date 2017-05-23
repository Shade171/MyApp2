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
    @IBOutlet weak var onePlayerButton: UIButton!
    @IBOutlet weak var twoPlayerButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myImageView.image = UIImage(named: "titleOfGame")
    }
}

