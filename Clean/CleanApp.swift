//
//  CleanApp.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import SwiftUI

@main
struct CleanApp: App {
    var body: some Scene {
        WindowGroup {
            NumberFactory().makeNumberView()
        }
    }
}

extension Number: CustomStringConvertible {
    var description: String { "\(value)" }
}
