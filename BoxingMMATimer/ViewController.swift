//
//  ViewController.swift
//  BoxingMMATimer
//
//  Created by Adam Palmer on 02/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let trainingTimes = ["Boxing": 180, "MMA": 300]
    
    var secondsRemaining = 60

    

    @IBAction func TimerSelected(_ sender: UIButton) {
        
        let roundChoice = sender.currentTitle! // Boxing, MMA
        
        secondsRemaining = trainingTimes[roundChoice]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        }
    }

}

