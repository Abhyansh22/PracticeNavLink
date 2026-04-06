//
//  PracticeNavLinkApp.swift
//  PracticeNavLink
//
//  Created by Jugad on 07/04/26.
//

import SwiftUI

@main
struct PracticeNavLinkApp: App {
    var body: some Scene {
        WindowGroup {
            DashBoardView()
                .environment(WorkoutLibrary())
        }
    }
}
