//
//  DateFormatter+Defaults.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import CMToolkit

extension DateFormatter: Configurable {
    
    static let monthDayYearFormatter = DateFormatter().applying {
        $0.dateFormat = "MMMM d, yyyy"
    }
}
