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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRedView.layer.cornerRadius = trafficLightRedView.bounds.height / 2
        trafficLightYellowView.layer.cornerRadius = trafficLightYellowView.bounds.height / 2
        trafficLightGreenView.layer.cornerRadius = trafficLightGreenView.bounds.height / 2
    }

    @IBAction func nextButtonDidTapped() {
        
    }
    
}

