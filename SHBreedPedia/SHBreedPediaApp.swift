//
//  SHBreedPediaApp.swift
//  SHBreedPedia
//
//  Created by Vinicius Gibran on 04/07/2023.
//

import SwiftUI

@main
struct SHBreedPediaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
