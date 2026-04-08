//
//  WorkoutPlanDetailView.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

struct WorkoutPlanDetailView: View {
    var somePlan: WorkoutPlan
    var body: some View {
        VStack(){
            Section() {
                WorkoutPlanCard(onePlan: somePlan)
            } header: {
                HStack{
                    Text("Plan Info")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    Spacer()
                }
            }
            Section {
                ForEach(somePlan.featuresExercise) { oneExercise in
                    NavigationLink(value: oneExercise) {
                        ExerciseCard(exercise: oneExercise)
                    }
                    
                }
            } header: {
                HStack{
                    Text("Featured Exercises")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    Spacer()
                }
//                    .padding(.horizontal)
            }
            
            Button("Start Workout") {
                //
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()


        }
        .navigationTitle(somePlan.name)
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
    WorkoutPlanDetailView(somePlan: somePlan)
}
