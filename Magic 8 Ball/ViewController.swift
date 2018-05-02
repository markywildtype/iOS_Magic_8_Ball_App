//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mark Blanford on 02/05/2018.
//  Copyright © 2018 Mark Blanford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    let answers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ballShaken(_ sender: UIButton) {
        generateRandomAnswer()
    }
    
    func generateRandomAnswer(){
        let randomIndex = Int(arc4random_uniform(5))
        ballView.image = UIImage(named: answers[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateRandomAnswer()
    }
    
}

