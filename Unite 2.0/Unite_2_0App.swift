//
//  Unite_2_0App.swift
//  Unite 2.0
//
//  Created by  on 2023/03/02.
//

import SwiftUI

@main
struct Unite_2_0App: App {
    @AppStorage("isFirstLaunch_Key") var isFirstLaunch = true

    var body: some Scene {
        WindowGroup {
            if isFirstLaunch {
                InstructionView()
            } else {
                ContentView()
            }
        }
    }
}
