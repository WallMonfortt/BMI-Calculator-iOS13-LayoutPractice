//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightView: UILabel!
    @IBOutlet weak var weightView: UILabel!
    @IBAction func heightBarController(_ sender: UISlider) {
        let height = sender.value
        heightView.text = String(format: "%.2f", height)
        print("the value is : \(    sender.value)")
    }
    @IBAction func weightBarController(_ sender: UISlider) {
        let weight = sender.value
        weightView.text = String(format: "%.2f", weight)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

