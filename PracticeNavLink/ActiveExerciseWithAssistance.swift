//
//  ActiveExerciseWithAssistance.swift
//  PracticeNavLink
//
//  Created by Jugad on 08/04/26.
//

import SwiftUI
import Combine

struct ActiveExerciseWithAssistance: View {
    var someExercise: Exercise
    @State private var timerSubscription: AnyCancellable?
    @State var timerValue: Int = 0
    var body: some View {
        VStack{
            Text("\(timerValue)")
                .font(.largeTitle)
            Button("Start") {
                startTimer()
            }
            .buttonStyle(.borderedProminent)
            Button("Use Assistance") {
                //
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(someExercise.name)
    }
    private func startTimer() {
        // Creating the timer subscription
        timerSubscription = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                timerValue += 1
//                if timeRemaining > 0 {
//                    timeRemaining -= 1
//                } else {
//                    stopTimer()
//                }
            }
    }
}

#Preview {
    let someEx = Exercise(name: "Shoulder Press", targets: .shoulder, requiresFormCorrection: true)
    ActiveExerciseWithAssistance(someExercise: someEx)
}
