//
//  DayView.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import SwiftUI

struct DayView: View {
    
    var workout: Workout
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(DateFormatter.monthDayYearFormatter.string(for: workout.date)!)")
                    .font(.headline)
                
                HStack {
                    Text("Week \(workout.week), Day \(workout.day)")
                        .font(.subheadline)
                }
            }
            
            Spacer()
            
            HStack {
                VStack {
                    Text("\(workout.sets.breakdown.first)").font(.headline)
                    Text("\(String(format: "%.0lf", workout.sets.percentages.0 * 100))%").font(.subheadline)
                }.foregroundColor(.color(forPercentage: workout.sets.percentages.0))
                Text("/")
                VStack {
                    Text("\(workout.sets.breakdown.second)").font(.headline)
                    Text("\(String(format: "%.0lf", workout.sets.percentages.1 * 100))%").font(.subheadline)
                }.foregroundColor(.color(forPercentage: workout.sets.percentages.1))
                Text("/")
                VStack {
                    Text("\(workout.sets.breakdown.third)").font(.headline)
                    Text("\(String(format: "%.0lf", workout.sets.percentages.2 * 100))%").font(.subheadline)
                }.foregroundColor(.color(forPercentage: workout.sets.percentages.2))
            }
        }
    }
}
