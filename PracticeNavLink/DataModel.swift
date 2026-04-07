//
//  DataModel.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import Foundation
/*
WorkoutPlan: Contains a name (e.g., "Leg Day"), a duration, and an array of Exercise objects.

Exercise: Contains a name (e.g., "Barbell Squats"), a target muscle group, and a boolean requiresFormCorrection.
*/
enum targetMuscleGroup: String {
    case back = "Back"
    case chest = "Chest"
    case shoulder = "Shoulder"
    case arms = "Arms"
    case legs = "Legs"
    case core = "Core"
}

struct Exercise: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var targets: targetMuscleGroup
    var requiresFormCorrection: Bool
}

struct WorkoutPlan: Hashable, Identifiable {
    
    var id = UUID()
    var name: String
    var duration: Int
    var featuresExercise: [Exercise]
}
