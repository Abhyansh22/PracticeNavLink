//
//  WorkoutPlanDetailView.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

struct WorkoutPlanDetailView: View {
    @Binding var currEx: Int
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
//                    NavigationLink(value: oneExercise) {
//                        ExerciseCard(exercise: oneExercise)
//                    }
                    if(oneExercise.requiresFormCorrection){
                        NavigationLink(value: ExerciseViewRoutes.activeExerciseWithFormCorrection(oneExercise)) {
                            ExerciseCard(exercise: oneExercise)
                        }
                    }
                    else{
                        NavigationLink(value: ExerciseViewRoutes.activeExerciseWithoutFormCorrection(oneExercise)) {
                            ExerciseCard(exercise: oneExercise)
                        }
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
            
//            NavigationLink(value: somePlan.featuresExercise[currEx]) {
//                //RunningExercise(ongoingEx: $currEx, someExercise: <#T##Exercise#>)
//                
//                Text(currEx==0 ? "Start Workout" : "Perform \(somePlan.featuresExercise[currEx].name)")
//                    .foregroundStyle(.black)
//                    .padding()
//                    .background(.gray, in: .rect(cornerRadius: 8))
//            }
            
            NavigationLink(value: ExerciseViewRoutes.runningExercise(somePlan.featuresExercise[currEx])) {
                //RunningExercise(ongoingEx: $currEx, someExercise: <#T##Exercise#>)
                
                Text(currEx==0 ? "Start Workout" : "Perform \(somePlan.featuresExercise[currEx].name)")
                    .foregroundStyle(.black)
                    .padding()
                    .background(.gray, in: .rect(cornerRadius: 8))
            }
            
            Spacer()


        }
        .navigationTitle(somePlan.name)
//        .navigationDestination(for: Exercise.self) { exercise in
//            RunningExercise(ongoingEx: $currEx, someExercise: exercise)
//        }
    }
}

#Preview {
    @Previewable @State var idx = 0
    
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
    WorkoutPlanDetailView(currEx:$idx, somePlan: somePlan)
}
