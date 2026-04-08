//
//  RunningExercise.swift
//  PracticeNavLink
//
//  Created by Jugad on 09/04/26.
//

import SwiftUI

struct RunningExercise: View {
    @Environment(\.dismiss) var dismiss
    @Binding var ongoingEx: Int
    var someExercise: Exercise
    var body: some View {
        VStack{
            Text("Currently running exercise \(someExercise.name)")
                .font(.title2)
            Button("Exercise Complete") {
                dismiss()
                ongoingEx+=1
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(someExercise.name)
    }
}

#Preview {
    @Previewable @State var currentEx = 0
    let someEx = Exercise(name: "Chest Press", targets: .chest, requiresFormCorrection: false)
    RunningExercise(ongoingEx: $currentEx, someExercise: someEx)
}
