//
//  ElysiamRealmApp.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 25/12/22.
//

import SwiftUI

@main
struct ElysiamRealmApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
