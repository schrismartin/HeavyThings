//
//  Sets.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation

struct Sets {
    
    enum Breakdown {
        case fiveFiveFive
        case threeThreeThree
        case fiveThreeOne
        
        var first: Int {
            switch self {
            case .fiveFiveFive, .fiveThreeOne:
                return 5
            case .threeThreeThree:
                return 3
            }
        }
        
        var second: Int {
            switch self {
            case .fiveThreeOne, .threeThreeThree:
                return 3
            case .fiveFiveFive:
                return 5
            }
        }
        
        var third: Int {
            switch self {
            case .fiveThreeOne:
                return 1
            case .threeThreeThree:
                return 3
            case .fiveFiveFive:
                return 5
            }
        }
    }
    
    enum Set {
        case first
        case second
        case third
    }
    
    var breakdown: Breakdown
    var percentages: (Double, Double, Double)
    
    func weight(for set: Set, max: Double, granularity: Double = 5) -> Double {
        switch set {
        case .first:
            return weight(percentage: percentages.0, of: max, granularity: granularity)
        case .second:
            return weight(percentage: percentages.1, of: max, granularity: granularity)
        case .third:
            return weight(percentage: percentages.2, of: max, granularity: granularity)
        }
    }
    
    private func weight(percentage: Double, of max: Double, granularity: Double) -> Double {
        let adjusted = max * percentage
        return ceil(adjusted / granularity) * granularity
    }
}
