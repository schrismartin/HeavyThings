//
//  Color+Defaults.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    
    static func color(for amount: Double, max: Double) -> Color {
        func hueValue(for currentValue: Double, maxValue: Double) -> Double {
            let bottomCoefficient = 0.4
            
            let bottomCutoff = maxValue * bottomCoefficient
            let adjustedCurrent = currentValue - bottomCutoff
            let adjustedMax = maxValue - bottomCutoff
            let percentageOfMax = adjustedCurrent / adjustedMax
            let inverse = 1 - percentageOfMax
            let hueAdjusted = inverse * 0.3
            return hueAdjusted
        }
        
        return Color(hue: hueValue(for: amount, maxValue: max), saturation: 1, brightness: 0.9)
    }
    
    static func color(forPercentage percentage: Double) -> Color {
        func hueValue(for percentage: Double) -> Double {
            let percentageOfMax = (percentage - 0.4) / 0.6
            let inverse = 1 - percentageOfMax
            let hueAdjusted = inverse * 0.3
            return hueAdjusted
        }
        
        return Color(hue: hueValue(for: percentage), saturation: 1, brightness: 0.9)
    }
}
