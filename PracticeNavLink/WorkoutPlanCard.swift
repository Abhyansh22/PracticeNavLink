//
//  WorkoutPlanCard.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

struct WorkoutPlanCard: View {
    var onePlan: WorkoutPlan
    var body: some View {
        HStack{
            Text("\(onePlan.name)")
                .font(.title3)
            Spacer()
            Text("\(onePlan.duration) mins")
            
        }
        .padding()
        .foregroundStyle(.black)
        .background(.gray,in: .rect(cornerRadius: 16))
        .padding(.horizontal, 10)
    }
}

#Preview {
    let somePlan = WorkoutPlan(
        name: "Leg Day Demolition",
        duration: 60,
        featuresExercise: [
            Exercise(name: "Barbell Squats", targets: .legs, requiresFormCorrection: true),
            Exercise(name: "Romanian Deadlifts", targets: .legs, requiresFormCorrection: true),
            Exercise(name: "Leg Extensions", targets: .legs, requiresFormCorrection: false),
            Exercise(name: "Calf Raises", targets: .legs, requiresFormCorrection: false)
        ]
    )
    WorkoutPlanCard(onePlan: somePlan)
        //.environment(WorkoutLibrary())
}
