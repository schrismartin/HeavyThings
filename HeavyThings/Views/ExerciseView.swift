//
//  ExerciseView.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation
import SwiftUI

struct ExerciseView: View {
    var exercise: Exercise
    var sets: Sets
    
    var header: some View {
        HStack(alignment: .center) {
            exercise.type.icon.image
                .renderingMode(.template)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.accentColor)
            
            Text("\(exercise.type.name) @ \(String(format: "%.1lf", exercise.max))")
                .font(.headline)
                .foregroundColor(.accentColor)
            
            Spacer()
        }
    }
    
    var body: some View {
        VStack {
            header
            
            HStack(spacing: 12) {
                StatView(
                    title: "\(sets.breakdown.first)x",
                    amount: sets.weight(for: .first, max: exercise.max),
                    max: exercise.max
                )
                Divider()
                StatView(
                    title: "\(sets.breakdown.second)x",
                    amount: sets.weight(for: .second, max: exercise.max),
                    max: exercise.max
                )
                Divider()
                StatView(
                    title: "\(sets.breakdown.third)x +",
                    amount: sets.weight(for: .third, max: exercise.max),
                    max: exercise.max
                )
                
                Spacer()
            }
        }
    }
}
