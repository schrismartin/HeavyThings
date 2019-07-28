//
//  Icon.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import SwiftUI

enum Icon: String, Hashable {
    case benchpress = "icons8-bench-press-100"
    case deadlift = "icons8-deadlift-100"
    case fitness = "icons8-fitness-100"
    case squats = "icons8-squats-100"
    
    var image: Image {
        Image(decorative: rawValue)
    }
}
