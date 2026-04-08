//
//  ExerciseCard.swift
//  PracticeNavLink
//
//  Created by Jugad on 08/04/26.
//

import SwiftUI

struct ExerciseCard: View {
    var exercise: Exercise
    var body: some View {
        HStack{
            Text("\(exercise.name)")
                
                .font(.title3)
                .padding()
            Spacer()
            
        }
        .foregroundStyle(.black)
        .background(.gray ,in: .rect(cornerRadius: 16))
        .padding(.horizontal, 10)
    }
}

#Preview {
    let someExercise = Exercise(name: "Squats", targets: .legs, requiresFormCorrection: false)
    ExerciseCard(exercise: someExercise)
}
