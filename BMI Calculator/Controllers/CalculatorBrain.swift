

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    var advice = "0"
    var color = UIColor()
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        let colors = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), normalweight: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), overweight: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks!" , color: colors.underweight)
        }
        else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Your fit is good!" , color: colors.normalweight)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!" , color: colors.overweight)
        }
        
        advice = bmi?.advice ?? "No advice"
        color = bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        let currentAdvice  = advice
        return currentAdvice
    }
    func getColor() -> UIColor {
        let currentColor = color
        return currentColor
    }
}
