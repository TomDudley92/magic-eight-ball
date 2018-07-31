//
//  ViewController.swift
//  magic-eight-ball
//
//  Created by Thomas Dudley on 31/07/2018.
//  Copyright © 2018 Thomas Dudley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicEightBallImage: UIImageView!
    
    let eightBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateEightBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateEightBallImage()
    }
    
    func updateEightBallImage() {
        magicEightBallImage.image = UIImage(named: eightBallArray[Int(arc4random_uniform(5))])
    }
    
    @IBAction func ActionButtonPressed(_ sender: Any) {
        updateEightBallImage()
    }
}

