//
//  templateApp.swift
//  template
//
//  Created by Rayen Kamta on 6/7/25.
//

import SwiftUI
import SwiftData

@main
struct templateApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
        
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
