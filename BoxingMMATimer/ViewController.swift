//
//  ViewController.swift
//  BoxingMMATimer
//
//  Created by Adam Palmer on 02/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let trainingTimes = ["Boxing": 3, "MMA": 5]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0

    @IBAction func TimerSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let roundChoice = sender.currentTitle! // Boxing, MMA
        totalTime = trainingTimes[roundChoice]!
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = roundChoice
        
       timer =  Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    //@objc is objective c, #selector comes from objective c
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
                    } else {
            timer.invalidate()
            titleLabel.text = "End of the round!"
            titleLabel.textColor = .red
        }
    }

}

