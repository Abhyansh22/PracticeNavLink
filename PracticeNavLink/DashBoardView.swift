//
//  ContentView.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

struct DashBoardView: View {
    @Environment(WorkoutLibrary.self) var fullLibrary
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
                    WorkoutPlanDetailView(somePlan: plan)
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
    DashBoardView()
        .environment(WorkoutLibrary())
}
