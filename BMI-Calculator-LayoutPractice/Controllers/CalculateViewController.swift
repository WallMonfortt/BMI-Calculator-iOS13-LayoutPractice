//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var heightView: UILabel!
    @IBOutlet weak var weightView: UILabel!

    @IBAction func heightBarController(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightView.text = "\(height) m"
        print("the value is : \(    sender.value)")
    }
    @IBAction func weightBarController(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightView.text = "\(weight) Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Double(heightView.text!.split(separator: " ").first!)!
        let weight = Double(weightView.text!.split(separator: " ").first!)!
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
        }
    }
    
}

