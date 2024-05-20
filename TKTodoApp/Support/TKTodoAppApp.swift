//
//  TKTodoAppApp.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 20/05/24.
//

import SwiftUI
import FirebaseCore

@main
struct TKTodoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
