//
//  SwiftUIAppLifeCycleApp.swift
//  SwiftUIAppLifeCycle
//
//  Created by ramil on 26.10.2020.
//

import SwiftUI

@main
struct SwiftUIAppLifeCycleApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        // do init part
        doFirebaseInit()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { (phase) in
            switch phase {
            
            case .background:
                print("background phase")
            case .inactive:
                print("inactive phase")
            case .active:
                print("active phase")
            @unknown default:
                print("default phase")
            }
        }
    }
    
    func doFirebaseInit() {
        // ...
    }
}
