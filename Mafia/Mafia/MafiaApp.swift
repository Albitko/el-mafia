//
//  MafiaApp.swift
//  Mafia
//
//  Created by Alex on 22.09.2021.
//

import SwiftUI

@main
struct MafiaApp: App {
    
    @StateObject private var vm = InitialViewModel()
    
    var body: some Scene {
        WindowGroup {
                StartView()
                    .environmentObject(vm)
        }
    }
}
