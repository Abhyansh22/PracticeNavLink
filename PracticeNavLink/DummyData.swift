//
//  DummyData.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import Foundation

@Observable
class WorkoutLibrary {
    var library: [WorkoutPlan]
    
    init(library: [WorkoutPlan] = WorkoutLibrary.dummyData) {
        self.library = library
    }
    
    // MARK: - Dummy Data
    static let dummyData: [WorkoutPlan] = [
        WorkoutPlan(
            name: "Leg Day Demolition",
            duration: 60,
            featuresExercise: [
                Exercise(name: "Barbell Squats", targets: .legs, requiresFormCorrection: true),
                Exercise(name: "Romanian Deadlifts", targets: .legs, requiresFormCorrection: true),
                Exercise(name: "Leg Extensions", targets: .legs, requiresFormCorrection: false),
                Exercise(name: "Calf Raises", targets: .legs, requiresFormCorrection: false)
            ]
        ),
        WorkoutPlan(
            name: "Upper Body Power",
            duration: 45,
            featuresExercise: [
                Exercise(name: "Bench Press", targets: .chest, requiresFormCorrection: true),
                Exercise(name: "Pull-ups", targets: .back, requiresFormCorrection: false),
                Exercise(name: "Overhead Press", targets: .shoulder, requiresFormCorrection: true),
                Exercise(name: "Bicep Curls", targets: .arms, requiresFormCorrection: false)
            ]
        ),
        WorkoutPlan(
            name: "Core & Stability",
            duration: 30,
            featuresExercise: [
                Exercise(name: "Plank", targets: .core, requiresFormCorrection: true),
                Exercise(name: "Russian Twists", targets: .core, requiresFormCorrection: false),
                Exercise(name: "Hanging Leg Raises", targets: .core, requiresFormCorrection: true)
            ]
        ),
        WorkoutPlan(
            name: "Back & Biceps Pull",
            duration: 50,
            featuresExercise: [
                Exercise(name: "Barbell Rows", targets: .back, requiresFormCorrection: true),
                Exercise(name: "Lat Pulldowns", targets: .back, requiresFormCorrection: false),
                Exercise(name: "Hammer Curls", targets: .arms, requiresFormCorrection: false)
            ]
        )
    ]
}
