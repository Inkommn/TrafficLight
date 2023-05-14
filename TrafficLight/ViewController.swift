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
    
    var currentLight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.bounds.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.bounds.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.bounds.height / 2
    }
    
    @IBAction func startButtonDidTapped() {
        currentLight += 1
        if currentLight > 3 {
            currentLight = 1
        }
        
        switch currentLight {
        case 1:
            trafficLightRedView.alpha = 1.0
            startButton.setTitle("NEXT", for: .normal)
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
}
