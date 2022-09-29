//
//  DZ3App.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import SwiftUI

@main
struct DZ3App: App {
    
    init() {
        ServiceConfigurator.shared.register()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
