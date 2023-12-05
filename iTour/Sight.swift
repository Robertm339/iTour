//
//  Sight.swift
//  iTour
//
//  Created by Robert Martinez on 10/1/23.
//

import Foundation
import SwiftData

@Model
class Sight {
    var name: String
    var destination: Destination?
    
    init(name: String) {
        self.name = name
    }
}
