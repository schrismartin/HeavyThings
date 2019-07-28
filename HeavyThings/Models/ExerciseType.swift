//
//  ExerciseType.swift
//  HeavyThings
//
//  Created by Chris Martin on 7/28/19.
//  Copyright © 2019 Chris Martin. All rights reserved.
//

import Foundation

struct ExerciseType {
    var icon: Icon
    var name: String
}

extension ExerciseType {
    static let squats = ExerciseType(icon: .squats, name: "Squats")
    static let bench = ExerciseType(icon: .benchpress, name: "Bench Press")
    static let deadlift = ExerciseType(icon: .deadlift, name: "Deadlift")
    static let overheadPress = ExerciseType(icon: .fitness, name: "Overhead Press")
}
