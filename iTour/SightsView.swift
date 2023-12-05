//
//  SightsView.swift
//  iTour
//
//  Created by Robert Martinez on 11/5/23.
//

import SwiftData
import SwiftUI

struct SightsView: View {
    @Query(sort: \Sight.name) var sights: [Sight]
    
    var body: some View {
        NavigationStack {
            List(sights) { sight in
                NavigationLink(value: sight.destination) {
                    Text(sight.name)
                }
            }
            .navigationTitle("Sights")
            .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
        }
    }
}

#Preview {
    SightsView()
}
