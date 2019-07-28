//
//  StatView.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import SwiftUI

struct StatView: View {
    
    var title: String
    var amount: Double
    var max: Double
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(title).font(.callout)
            Text(verbatim: "\(amount)").font(.title)
                .foregroundColor(.accentColor)
        }.accentColor(.color(for: amount, max: max))
    }
}
