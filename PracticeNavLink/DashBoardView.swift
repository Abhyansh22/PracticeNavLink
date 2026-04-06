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
        NavigationStack{
            VStack {
//                ForEach(fullLibrary.library){WorkoutPlanCard(libraryy: <#T##Environment<WorkoutLibrary>#>)}
            }
            .padding()
        }
    }
}

#Preview {
    DashBoardView()
        .environment(WorkoutLibrary())
}
