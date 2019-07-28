//
//  ContentView.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import SwiftUI
import CMToolkit

struct DashboardView: View {
    
    var workout: Workout
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Today").font(.headline)) {
                    DayView(workout: workout)
                    
                    ForEach(workout.exercises) { exercise in
                        NavigationLink(destination: Text(exercise.type.name)) {
                            ExerciseView(exercise: exercise, sets: self.workout.sets)
                                .accentColor(.pink)
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .navigationBarTitle("Dashboard", displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let workout = Workout(
            week: 1,
            day: 1,
            date: .now,
            sets: Sets(
                breakdown: .fiveThreeOne,
                percentages: (0.6, 0.7, 0.8)
            ),
            exercises: [
                Exercise(
                    id: 0,
                    type: .squats,
                    max: 210
                ),
                Exercise(
                    id: 1,
                    type: .bench,
                    max: 180
                )
            ]
        )
        
        return Group {
            DashboardView(workout: workout)
                .colorScheme(.light)
            
            DashboardView(workout: workout)
                .colorScheme(.dark)
        }
    }
}
#endif
