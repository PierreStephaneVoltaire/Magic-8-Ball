//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Xcode User on 2017-10-10.
//  Copyright © 2017 Pierre-Stephane Voltaire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var magicBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            change8BallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func QuestionBtnTapped(_ sender: UIButton) {
    change8BallImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        change8BallImage()
    }
    func change8BallImage(){
        let randomImageIndex=arc4random_uniform(5)
        magicBallImageView.image=UIImage(named:"ball\(randomImageIndex+1)")    }
}

