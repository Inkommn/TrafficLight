//
//  ViewController.swift
//  TrafficLight
//
//  Created by Shamkhan Mutuskhanov on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightRedView: UIView!
    @IBOutlet var trafficLightYellowView: UIView!
    @IBOutlet var trafficLightGreenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.configuration = setupButton(with: "START")
        
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.frame.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.frame.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.frame.height / 2
    }
    
   
    
    @IBAction func startButtonDidTapped() {
            startButton.configuration = setupButton(with: "NEXT")
        
        currentLight += 1
        if currentLight > 3 {
            currentLight = 1
        }
        
        switch currentLight {
        case 1:
            trafficLightRedView.alpha = 1.0
            trafficLightYellowView.alpha = 0.3
            trafficLightGreenView.alpha = 0.3
            
        case 2:
            trafficLightYellowView.alpha = 1.0
            trafficLightRedView.alpha = 0.3
            trafficLightGreenView.alpha = 0.3
        case 3:
            trafficLightGreenView.alpha = 1.0
            trafficLightYellowView.alpha = 0.3
            trafficLightRedView.alpha = 0.3
        default:
            break
        }
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 25)
        return buttonConfiguration
    }
}


