//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Jose Gualberto Monfortte Flores on 22/10/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain{

    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiValueString = String(format: "%.2f", bmi?.value ?? 0.0)
    print("The BMI value is: \(bmiValueString)")
        return bmiValueString
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "no advice for you right now!"
       
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .black
    }

    mutating func calculateBMI(height: Double, weight: Double){
        let bmiValue = weight / pow(height, 2)
        var advice = "Eat less, drink more, and move more!"
        var color = UIColor.red
        if bmiValue < 18.5{
            advice = "Eat more snacks!"
            color = UIColor.blue
        }else if bmiValue < 25{
            advice = "you're doing good, continue!!"
            color = UIColor.green
        }else{
            print("Overweight")
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
}
