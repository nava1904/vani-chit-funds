//
//  foremen_choiceApp.swift
//  foremen choice
//
//  Created by navadeep reddy on 02/05/25.
//
import CoreData
import SwiftUI

@main
struct ForemenChoiceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
        }
    }
}
