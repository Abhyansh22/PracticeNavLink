//
//  ContentView.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

enum ExerciseViewRoutes: Hashable{
    case activeExerciseWithFormCorrection(Exercise)
    case activeExerciseWithoutFormCorrection(Exercise)
    case runningExercise(Exercise)
}

struct DashBoardView: View {
    @Environment(WorkoutLibrary.self) var fullLibrary
    @State var currEx = 0
    var body: some View {

        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(fullLibrary.library) { plan in
                        NavigationLink(value: plan) {
                            WorkoutPlanCard(onePlan: plan)
                        }
                        
                    }
                }
                .navigationTitle("Dashboard")
                .navigationDestination(for: WorkoutPlan.self) { plan in
                    WorkoutPlanDetailView(currEx:$currEx ,somePlan: plan)
                }
                .navigationDestination(for: ExerciseViewRoutes.self) { route in
                    switch route {
                    case .activeExerciseWithFormCorrection(let ex):
                        ActiveExerciseView(someExercise: ex)
                        
                    case .activeExerciseWithoutFormCorrection(let ex):
                        ActiveExerciseWithAssistance(someExercise: ex)
                        
                    case .runningExercise(let ex):
                        RunningExercise(ongoingEx: $currEx, someExercise: ex)
                    }
                }
//                .navigationDestination(for: Exercise.self) { someEx in
//                    if(someEx.requiresFormCorrection){ ActiveExerciseWithAssistance(someExercise: someEx)
//                    }
//                    else{
//                        ActiveExerciseView(someExercise: someEx)
//                    }
//                }
                
            }
        }

    }
}

#Preview {
    //@Previewable @State var someIdx = 0
    DashBoardView()
        .environment(WorkoutLibrary())
}
