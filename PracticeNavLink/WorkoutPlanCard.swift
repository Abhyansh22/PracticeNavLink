//
//  WorkoutPlanCard.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

struct WorkoutPlanCard: View {
    @Environment(WorkoutLibrary.self) var libraryy
//    var workoutPlann: WorkoutPlan? = libraryy.library.first
    var workoutPlann: WorkoutPlan? {
        libraryy.library.first
    }
    var body: some View {
        HStack{
            Text(workoutPlann?.name ?? "Some Plan")
                .font(.title3)
            Spacer()
            Text("\(workoutPlann?.duration ?? 10) mins")
            
        }
        .padding()
        .background(.secondary ,in: .rect(cornerRadius: 16))
        .padding()
    }
}

#Preview {
    WorkoutPlanCard()
        .environment(WorkoutLibrary())
}
