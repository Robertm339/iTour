//
//  iTourApp.swift
//  iTour
//
//  Created by Robert Martinez on 9/30/23.
//

import SwiftUI
import SwiftData

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Destinations", systemImage: "map")
                    }
                
                SightsView()
                    .tabItem {
                        Label("Sights", systemImage: "mappin.and.ellipse")
                    }
            }
            
            
        }
        .modelContainer(for: Destination.self)
    }
}
